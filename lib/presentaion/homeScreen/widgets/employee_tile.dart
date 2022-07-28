import 'package:employee_app/models/employee_mode.dart';
import 'package:flutter/material.dart';

import '../../../core/constants.dart';

class EmployeeTile extends StatelessWidget {
  final EmployeeModel employee;
  const EmployeeTile({Key? key, required this.employee}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Container(
        height: 150,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Expanded(
                flex: 3,
                child: Container(
                  height: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius:const BorderRadius.horizontal(left: Radius.circular(10)),
                      image: DecorationImage(
                    image: NetworkImage(employee.imageUrl),
                    fit: BoxFit.cover
                  )),
                ),
              ),
              constsantWidth,
              Expanded(
                  flex: 4,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '${employee.firstName}\n${employee.lastName}',
                        style: const TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      constsantHeight,
                      Text(employee.email,style:const  TextStyle(color: Colors.grey),)
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
