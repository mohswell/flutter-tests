// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_import, directives_ordering

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import './step/the_app_is_running.dart';
import './step/the_user_adds_a_new_task_buy_groceries.dart';
import './step/the_task_buy_groceries_should_be_added_to_the_task_list.dart';
import './step/there_is_a_task_buy_groceries_displayed.dart';
import './step/the_user_taps_the_task_buy_groceries.dart';
import './step/the_task_buy_groceries_should_be_marked_as_completed.dart';
import './step/the_user_adds_an_empty_task.dart';
import './step/an_error_message_should_be_displayed.dart';
import './step/there_are_no_tasks_displayed.dart';
import './step/the_user_taps_a_nonexistent_task.dart';
import './step/the_user_adds_a_new_task_go_to_the_store.dart';
import './step/the_task_go_to_the_store_should_be_added_to_the_task_list.dart';
import './step/the_user_adds_a_new_task_task1.dart';
import './step/the_user_adds_a_new_task_task2.dart';
import './step/both_tasks_should_be_added_to_the_task_list.dart';
import './step/there_is_a_task_task1_displayed.dart';
import './step/the_user_deletes_the_task_task1.dart';
import './step/the_task_task1_should_be_removed_from_the_task_list.dart';

void main() {
  group('''Tasks in the to-do list''', () {
    testWidgets('''User should be able to add a new task''', (tester) async {
      await theAppIsRunning(tester);
      await theUserAddsANewTaskBuyGroceries(tester);
      await theTaskBuyGroceriesShouldBeAddedToTheTaskList(tester);
    });
    testWidgets('''User should mark a task complete''', (tester) async {
      await theAppIsRunning(tester);
      await thereIsATaskBuyGroceriesDisplayed(tester);
      await theUserTapsTheTaskBuyGroceries(tester);
      await theTaskBuyGroceriesShouldBeMarkedAsCompleted(tester);
    });
    testWidgets('''User should not be able to add an empty task''',
        (tester) async {
      await theAppIsRunning(tester);
      await theUserAddsAnEmptyTask(tester);
      await anErrorMessageShouldBeDisplayed(tester);
    });
    testWidgets(
        '''User should not be able to mark a non-existent task complete''',
        (tester) async {
      await theAppIsRunning(tester);
      await thereAreNoTasksDisplayed(tester);
      await theUserTapsANonexistentTask(tester);
      await anErrorMessageShouldBeDisplayed(tester);
    });
    testWidgets('''User should be able to add a task with special characters''',
        (tester) async {
      await theAppIsRunning(tester);
      await theUserAddsANewTaskGoToTheStore(tester);
      await theTaskGoToTheStoreShouldBeAddedToTheTaskList(tester);
    });
    testWidgets('''User should be able to add multiple tasks''',
        (tester) async {
      await theAppIsRunning(tester);
      await theUserAddsANewTaskTask1(tester);
      await theUserAddsANewTaskTask2(tester);
      await bothTasksShouldBeAddedToTheTaskList(tester);
    });
    testWidgets('''User should be able to delete a task''', (tester) async {
      await theAppIsRunning(tester);
      await thereIsATaskTask1Displayed(tester);
      await theUserDeletesTheTaskTask1(tester);
      await theTaskTask1ShouldBeRemovedFromTheTaskList(tester);
    });
  });
}
