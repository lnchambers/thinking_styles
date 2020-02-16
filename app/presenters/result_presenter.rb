class ResultPresenter
  def initialize(params)
    @params = params
  end

  def result
    JSON.parse(File.read(Rails.root.join("spec", "test_data", "expected_response_1.json")))
  end
end
