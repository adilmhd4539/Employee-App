import '/core/constants.dart';
import '../widgets/api_error_snak_bar.dart';
import '/service/service_blocs/employee/employee_bloc.dart';

import '/presentaion/homeScreen/widgets/employee_tile.dart';
import '/presentaion/widgets/app_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

final scrollController = ScrollController();

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    scrollController.addListener(() {
      if (scrollController.position.pixels ==
          scrollController.position.maxScrollExtent) {
        context.read<EmployeeBloc>().add(const GetEmployees());
      }
    });
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<EmployeeBloc>().add(const GetEmployees());
    });
    return Scaffold(
      backgroundColor: const Color(0xffe0dede),
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(55),
        child: AppBarWidget(title: "Home"),
      ),
      body: BlocConsumer<EmployeeBloc, EmployeeState>(
        listener: (context, state) {
          if (state.connectionError) {
            showErrormessage(
                "Network connction error\nPlease cheack your Connction\n Or try after some time",
                context);
          } else if (state.dataFeachingError) {
            showErrormessage(
                "Something went wrong please try after some Time", context);
          }
        },
        builder: (context, state) {
          return state.isLoading && state.currentLoadingPage == 0
              ? const Center(child: CircularProgressIndicator())
              : state.employees.isEmpty
                  ? const Center(
                      child: Text("No Employers to show"),
                    )
                  : ListView.separated(
                      controller: scrollController,
                      itemBuilder: (cta, i) =>
                          EmployeeTile(employee: state.employees[i]),
                      separatorBuilder: (ctb, i) => constsantHeight,
                      itemCount: state.employees.length,
                    );
        },
      ),

      //Add section
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          TextEditingController nameController = TextEditingController();
          TextEditingController jobController = TextEditingController();
          final formKey = GlobalKey<FormState>();
          showDialog(
              context: context,
              builder: (context) => Dialog(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Form(
                        key: formKey,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const SizedBox(),
                                const Text(
                                  "Add Employee",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                                GestureDetector(
                                  child: const Icon(Icons.close),
                                  onTap: () => Navigator.pop(context),
                                )
                              ],
                            ),
                            constsantHeight,
                            TextFormField(
                              controller: nameController,
                              validator: (value) {
                                if (value == '') {
                                  return "Enter name";
                                } else {
                                  return null;
                                }
                              },
                              decoration: const InputDecoration(
                                labelText: "Name",
                              ),
                            ),
                            constsantHeight,
                            TextFormField(
                              controller: jobController,
                              validator: (value) {
                                if (value == '') {
                                  return "Enter job";
                                } else {
                                  return null;
                                }
                              },
                              decoration: const InputDecoration(
                                labelText: "Job",
                              ),
                            ),
                            constsantHeight,
                            BlocConsumer<EmployeeBloc, EmployeeState>(
                              listener: (context, state) {
                                if (state.addingEmployeeFaild) {
                                  showErrormessage(
                                      "Adding Employee faild", context);
                                } else if (state.newEmployeeAddedSucessfully) {
                                  showSucessSnakBar(
                                      'Employee added Succesfully', context);
                                  Navigator.pop(context);
                                }
                              },
                              builder: (context, state) {
                                return ElevatedButton(
                                    onPressed: () {
                                      if (formKey.currentState!.validate()&&state.isAddingNewEmployee==false) {
                                        context.read<EmployeeBloc>().add(
                                            AddNewEmployee(nameController.text,
                                                jobController.text));
                                      }
                                    },
                                    child: state.isAddingNewEmployee
                                        ? const CircularProgressIndicator(
                                            color: Colors.white,
                                          )
                                        : const Text('Add'));
                              },
                            )
                          ],
                        ),
                      ),
                    ),
                  ));
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
