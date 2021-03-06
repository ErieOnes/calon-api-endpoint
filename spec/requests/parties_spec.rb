require 'spec_helper'

describe Pemilu::API do
  before (:each) do
    @pkb = create(:pkb)
    @pan = create(:pan)
  end

  describe "GET /api/parties" do
    it "returns an array of parties" do
      get "/api/parties"
      response.status.should == 200
      response.body.should == {
        results: {
          count: 2,
          parties: [{
            id: @pkb.id,
            nama: @pkb.nama,
            singkatan: @pkb.singkatan,
            situs: @pkb.situs
          }, {
            id: @pan.id,
            nama: @pan.nama,
            singkatan: @pan.singkatan,
            situs: @pan.situs
          }]
        }
      }.to_json
    end
  end

  describe "GET /api/parties/02" do
    it "returns a party" do
      get "/api/parties/02"
      response.status.should == 200
      response.body.should == {
        results: {
          count: 1,
          parties: [{
            id: @pkb.id,
            nama: @pkb.nama,
            singkatan: @pkb.singkatan,
            situs: @pkb.situs
          }]
        }
      }.to_json
    end
  end
end