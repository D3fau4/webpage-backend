# frozen_string_literal: true

group :server do
  guard "puma", port: ENV.fetch("HANAMI_PORT", 2300) do
    watch(%r{^(app|config|lib|slices)([\/][^\/]+)*.(rb|erb|haml|slim)$}i)
  end
end
