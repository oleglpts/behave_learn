#!/usr/bin/env bash

# https://docs.qameta.io/allure/#_jenkins - Jenkins integration

source venv/bin/activate
rm -rf reports/*
#behave -f allure_behave.formatter:AllureFormatter -o reports/$BUILD_NUMBER
behave -f pretty -o report_$BUILD_NUMBER
deactivate
