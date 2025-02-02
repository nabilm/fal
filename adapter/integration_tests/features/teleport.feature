@teleport
Feature: Teleporting data
  Background: Project Setup
    Given the project env_project

  Scenario: Run a Python model with Isolate and teleport
    When the following shell command is invoked:
      """
      dbt --debug run --profiles-dir $profilesDir --project-dir $baseDir -t integration_tests_teleport --select +model_c+
      """
    Then the following models are calculated in order:
      | model_a | model_c | model_d |
