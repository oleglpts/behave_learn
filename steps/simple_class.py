from behave import *
from core import SimpleClass


@given('we have SimpleClass')
def step_impl(context):
    context.simple_class = SimpleClass()


@when('test SimpleClass')
def step_impl(context):
    assert isinstance(context.simple_class.property0, list)
    assert True is not False


@then('behave will test SimpleClass for us!')
def step_impl(context):
    pass
