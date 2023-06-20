# frozen_string_literal: true

require_relative 'config/application'

Rails.application.load_tasks

task ci: ['db:test:prepare', 'test']
