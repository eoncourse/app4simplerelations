module TasksHelper
  def all_employees
    options_from_collection_for_select(Employee.all, 'id', 'name')
  end
end
