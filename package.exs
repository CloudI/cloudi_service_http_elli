defmodule CloudIServiceHttpElli do
  use Mix.Project

  def project do
    [app: :cloudi_service_db_http_elli,
     version: "1.3.3",
     description: description,
     package: package,
     deps: deps]
  end

  defp deps do
    [{:elli,
      [git: "https://github.com/knutin/elli.git",
       tag: "v0.4.1"]},
     {:cloudi_core, "~> 1.3.3"},
     {:cpg,
      [git: "https://github.com/okeuday/cpg.git",
       tag: "v1.3.3"]},
     {:uuid,
      [git: "https://github.com/okeuday/uuid.git",
       tag: "v1.3.3"]},
     {:reltool_util,
      [git: "https://github.com/okeuday/reltool_util.git",
       tag: "v1.3.3"]},
     {:trie,
      [git: "https://github.com/okeuday/trie.git",
       tag: "v1.3.3"]},
     {:quickrand,
      [git: "https://github.com/okeuday/quickrand.git",
       tag: "v1.3.3"]},
     {:nodefinder,
      [git: "https://github.com/okeuday/nodefinder.git",
       tag: "v1.3.2"]},
     {:dynamic_compile,
      [git: "https://github.com/okeuday/dynamic_compile.git",
       tag: "v1.3.3"]},
     {:syslog,
      [git: "https://github.com/okeuday/erlang-syslog.git",
       tag: "1.0.3"]}]
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
