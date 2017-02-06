module Skylight
  module Normalizers
    module Faraday
      class Request < Normalizer
        register "request.faraday"

        def normalize(trace, name, payload)
          env = payload[:env]
          method = env[:method].to_s
          uri = env[:url]

          opts = Formatters::HTTP.build_opts(method, uri.scheme, uri.host, uri.port, uri.path, uri.query)

          details = { path: uri.path }

          [opts.fetch(:category), opts.fetch(:title), details.presence.try(:to_json)]
        end
      end
    end
  end
end
