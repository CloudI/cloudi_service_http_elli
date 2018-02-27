#-*-Mode:elixir;coding:utf-8;tab-width:2;c-basic-offset:2;indent-tabs-mode:()-*-
# ex: set ft=elixir fenc=utf-8 sts=2 ts=2 sw=2 et nomod:

defmodule CloudIServiceHttpElli do
  use Mix.Project

  def project do
    [app: :cloudi_service_http_elli,
     version: "1.7.3",
     language: :erlang,
     description: description(),
     package: package(),
     deps: deps()]
  end

  defp deps do
    [{:elli, "~> 1.0.4"},
     {:cowlib, "~> 1.0.1"},
     {:uuid, "~> 1.7.3", hex: :uuid_erl},
     {:trie, "~> 1.7.3"},
     {:cloudi_core, "~> 1.7.3"}]
  end

  defp description do
    "Erlang/Elixir Cloud Framework elli HTTP Service"
  end

  defp package do
    [files: ~w(src doc rebar.config README.markdown),
     maintainers: ["Michael Truog"],
     licenses: ["MIT"],
     links: %{"Website" => "http://cloudi.org",
              "GitHub" => "https://github.com/CloudI/" <>
                          "cloudi_service_http_elli"}]
   end
end
