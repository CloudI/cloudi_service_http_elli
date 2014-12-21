defmodule CloudIServiceHttpElli do
  use Mix.Project

  def project do
    [app: :cloudi_service_db_http_elli,
     version: "1.4.0",
     language: :erlang,
     description: description,
     package: package,
     deps: deps]
  end

  defp deps do
    [{:elli,
      [git: "https://github.com/knutin/elli.git",
       tag: "v1.0.1"]},
     {:cowlib,
      [git: "https://github.com/ninenines/cowlib.git",
       tag: "1.0.0"]},
     {:uuid, "~> 1.4.0", hex: :uuid_erl},
     {:trie, "~> 1.4.0"},
     {:cloudi_core, "~> 1.4.0"}]
  end

  defp description do
    "Erlang/Elixir Cloud Framework elli HTTP Service"
  end

  defp package do
    [files: ~w(src doc rebar.config README.markdown),
     contributors: ["Michael Truog"],
     licenses: ["BSD"],
     links: %{"Website" => "http://cloudi.org",
              "GitHub" => "https://github.com/CloudI/" <>
                          "cloudi_service_http_elli"}]
   end
end
