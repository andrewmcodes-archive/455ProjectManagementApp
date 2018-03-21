# frozen_string_literal: true

Rails.application.middleware.use(Oink::Middleware,
                                 logger: Rails.logger)