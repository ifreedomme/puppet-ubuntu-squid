# Handle basic unix tasks that should be done on all unix hosts
class unix_base {

  include unix_base::repos
  include unix_base::common

}
