#!/usr/bin/env perl
# IMPORTANT: if you delete this file your app will not work as
# expected.  You have been warned.
use inc::Module::Install;

name 'Paquette';
all_from 'lib/Paquette.pm';

requires 'Catalyst::Runtime' => '5.80005';
requires 'Catalyst::Plugin::ConfigLoader';
requires 'Catalyst::Plugin::Static::Simple';
requires 'Catalyst::Action::RenderView';
requires 'Catalyst::Plugin::Authentication' => '0';
requires 'Catalyst::Plugin::Session' => '0';
requires 'Catalyst::Plugin::Session::Store::FastMmap' => '0';
requires 'Catalyst::Plugin::Session::State::Cookie' => '0';
requires 'Moose';
requires 'MooseX::Types';
requires 'namespace::autoclean';

requires 'parent';
requires 'Config::General'; # This should reflect the config file format you've chosen
                 # See Catalyst::Plugin::ConfigLoader for supported formats
catalyst;

install_script glob('script/*.pl');
auto_install;
WriteAll;
