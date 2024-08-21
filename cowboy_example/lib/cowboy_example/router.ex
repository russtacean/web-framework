defmodule CowboyExample.Router do
  @moduledoc """
  This module defines all the routes, params and handlers.
  This module is also the handler module for the root
  route.
  """
  alias CowboyExample.Router.Handlers.{Root, Greet}

  @doc """
  Returns the list of routes configured by this web server
  """
  def routes do
    [
      {:_,
       [
         {"/", Root, []},
         # Add this line
         {"/greet/:who", [who: :nonempty], Greet, []}
       ]}
    ]
  end
end
