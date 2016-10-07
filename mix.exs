defmodule CloudIServiceHttpElli do
  use Mix.Project

  def project do
    [app: :cloudi_service_db_http_elli,
     version: "1.5.4",
     language: :erlang,
     description: description,
     package: package,
     deps: deps]
  end

  defp deps do
    [{:elli, "~> 1.0.4"},
     {:cowlib, "~> 1.0.1"},
     {:uuid, "~> 1.5.4", hex: :uuid_erl},
     {:trie, "~> 1.5.4"},
     {:cloudi_core, "~> 1.5.4"}]
  end

  defp description do
    "Erlang/Elixir Cloud Framework elli HTTP Service"
  end

  defp package do
    [files: ~w(src doc rebar.config README.markdown),
     maintainers: ["Michael Truog"],
     licenses: ["BSD"],
     links: %{"Website" => "http://cloudi.org",
              "GitHub" => "https://github.com/CloudI/" <>
                          "cloudi_service_http_elli"}]
   end
end
