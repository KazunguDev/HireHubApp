import 'package:flutter/material.dart';
import 'package:hirehub/models/Job.dart';
import 'package:hirehub/screens/applicant/home/widgets/IconTextWidget.dart';

class JobItem extends StatelessWidget {
  final Job job;
  final bool showTime;
  final bool isSelected;
  const JobItem(this.job, this.isSelected, {this.showTime = false});
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      clipBehavior: Clip.antiAlias,
      margin: const EdgeInsets.symmetric(horizontal: 10),
      child: AnimatedContainer(
          duration: const Duration(milliseconds: 400),
          color: isSelected ? Colors.black : Colors.white,
          width: 250,
          height: 180,
          padding: const EdgeInsets.all(25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Image.asset(job.logoUrl),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        job.company,
                        style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  Icon(
                    job.isMark
                        ? Icons.bookmark
                        : Icons.bookmark_outline_outlined,
                    color: job.isMark
                        ? Theme.of(context).primaryColor
                        : isSelected
                            ? Colors.white
                            : Colors.black,
                  )
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                job.title,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: isSelected ? Colors.white : Colors.black,
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconText(Icons.location_on_outlined, job.location, 1),
                  if (showTime)
                    IconText(Icons.access_time_outlined, job.time, 1)
                ],
              )
            ],
          )),
    );
  }
}
