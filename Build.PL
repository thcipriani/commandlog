use Module::Build;

my $build = Module::Build->new(

  module_name => 'App::CommandLog',

  license  => 'gpl',

  requires => {
    'Getopt::Long'             => 0,
    'POSIX'                    => 0,
    'Cwd'                      => 0,
    'DBI'                      => 0,
    'Sys::Hostname'            => 0,
    'perl'                     => '5.10.0',
  },

  recommends => {
  },

);

$build->create_build_script;
