defmodule ScrapingPipeline do
    use Broadway
    require Logger

    def start_link(_args) do
        options = [
            name: ScrapingPipeline,
            producer: [
                module: {PageProducer, []},
                transformer: {ScrapingPipeline, :transform, []}
            ],
            processors: [
                default: []
            ]
        ]

        Broadway.start_link(__MODULE__, options)
    end
end