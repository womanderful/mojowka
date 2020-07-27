use strict;
use Module::Build;
#created by eumm-migrate.pl

my $build = Module::Build->new(
  'dist_abstract' => 'lightweight wiki based on top of mojowka',
  'license' => 'perl',
  'build_requires' => {
  },
  'dist_author' => [ 'Alexander Sapozhnikov <shoorick@cpan.org>', 'Natalia Serrano <github@womanderful.com>' ],
  'module_name' => 'mojowka-didi',
  'meta_merge' => {
    'keywords' => [
      'wiki',
    ],
    'resources' => {
      'repository' => 'http://github.com/womanderful/mojowka'
    }
  },
  'requires' => {
    'perl' => '5.008',
    'Mojolicious::Lite' => 0,
    'Mojo::ByteStream' => 0,
    'Text::Textile' => 0,
    'DBI' => 0,
    'DBD::SQLite' => 0,
    'Locale::TextDomain' => 0,
    'Mojolicious::Plugin::Textdomain' => 0,
  },
  'dist_version_from' => 'mojowka-didi'
);

$build->create_build_script();
