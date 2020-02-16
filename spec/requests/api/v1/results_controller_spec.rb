# frozen_string_literal: true

require 'rails_helper'

describe Api::V1::ResultsController do
  let(:params) { JSON.parse(File.read(Rails.root.join("spec", "test_data", "expected_input_1.json"))) }
  let(:expected_results) { JSON.parse(File.read(Rails.root.join("spec", "test_data", "expected_results_1.json")), symbolize_names: true) }

  describe '#create' do
    it "expects to return a correctly formatted json object" do
      post api_v1_results_path, params: params

      actual_response = JSON.parse(response.body, symbolize_names: true)

      expect(actual_response).to eq(expected_response)
    end
  end
end
