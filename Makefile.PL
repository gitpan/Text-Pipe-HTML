use inc::Module::Install;
name 'Text-Pipe-HTML';
all_from 'lib/Text/Pipe/HTML.pm';
perl_version '5.006';

requires 'Text::Pipe';
requires 'HTML::Entities';

build_requires 'Test::Differences';
build_requires 'Test::More' => '0.70';

process_templates(
    first_year => 2007,
    rest_from  => "$ENV{HOME}/.mitlib/standard_pod",
    start_tag  => '{%',
    end_tag    => '%}',
);

use_standard_tests(without => 'pod_coverage');
auto_include;
WriteAll;