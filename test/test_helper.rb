# encoding: utf-8
#
# This file is a part of Redmine Resources (redmine_resources) plugin,
# resource allocation and management for Redmine
#
# Copyright (C) 2011-2025 RedmineUP
# http://www.redmineup.com/
#
# redmine_resources is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# redmine_resources is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with redmine_resources.  If not, see <http://www.gnu.org/licenses/>.

require File.expand_path(File.dirname(__FILE__) + '/../../../test/test_helper')

SimpleCov.add_filter do |src_file|
  !src_file.filename.match?("/plugins/redmine_resources/")
end if ENV["'COVERAGE" ]

def compatible_request(type, action, parameters = {})
  send(type, action, params: parameters)
end

def compatible_xhr_request(type, action, parameters = {})
  send(type, action, params: parameters, xhr: true)
end

def create_fixtures(fixtures_directory, table_names, class_names = {})
  ActiveRecord::FixtureSet.create_fixtures(fixtures_directory, table_names, class_names)
end

def compatible_api_request(type, action, parameters = {}, headers = {})
  send(type, action, :params => parameters, :headers => headers)
end
