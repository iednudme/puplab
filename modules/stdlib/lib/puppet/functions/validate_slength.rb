Puppet::Functions.create_function(:validate_slength, Puppet::Functions::InternalFunction) do
  dispatch :deprecation_gen do
    scope_param
    optional_repeated_param 'Any', :args
  end
  def deprecation_gen(scope, *args)
    call_function('deprecation', 'puppet_3_type_check', "This method is deprecated, please use the stdlib validate_legacy function, with String[]. There is further documentation for validate_legacy function in the README.")
    scope.send("function_validate_slength", args)
  end
end
