FactoryGirl.define do
  factory :dpd1, class: Candidate do
    id 1
    lembaga "DPD"
    provinsi_id 11
    dapil_id nil
    partai_id nil
    urutan 1
    calon_id "DPD1101"
    nama "ADNAN N.S"
    jenis_kelamin "L"
    domisili "KOTA BANDA ACEH"
    foto_url "http://dct.kpu.go.id/images/foto/DPD/11.%20NAD/01.jpg"
    tahun 2014
  end

  factory :dpd2, class: Candidate do
    id 2
    lembaga "DPD"
    provinsi_id 11
    dapil_id nil
    partai_id nil
    urutan 2
    calon_id "DPD1102"
    nama "Dr. AHMAD FARHAN HAMID, M.S."
    jenis_kelamin "L"
    domisili "KOTA BANDA ACEH"
    foto_url "http://dct.kpu.go.id/images/foto/DPD/11.%20NAD/03.jpg"
    tahun 2014
  end
end