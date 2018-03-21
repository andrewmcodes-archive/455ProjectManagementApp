# frozen_string_literal: true

json.array! @artifacts, partial: 'artifacts/artifact', as: :artifact
