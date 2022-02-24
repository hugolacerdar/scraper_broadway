defmodule Scraper do
  # placeholder function
  def work do
    1..5
    |> Enum.random()
    |> :timer.seconds()
    |> Process.sleep()
  end

  def online?(_url) do
    # checking if the service is online or not.
    work()

    Enum.random([false, true, true])
  end
end
