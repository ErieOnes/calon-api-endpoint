FORMAT: 1A
HOST: http://www.pemiluapi.org

# Candidate API v2
The Candidate API is a service that provides information about candidates running for office in the 2014 Indonesian elections.

# Group Candidates
Candidates related resources of the **Candidates API**

## Candidates Collection [/candidates?apiKey={apiKey}&tahun={tahun}&lembaga={lembaga}&jenis_kelamin={jenis_kelamin}&provinsi={provinsi}&dapil={dapil}&partai={partai}&nama={nama}&limit={limit}&offset={offset}]

+ Parameters
    + offset (optional, number, `300`) ... Number the offset from the beginning of the list of records to return (use in combination with `limit` to support pagination)
    + limit (optional, number, `25`) ... Number the number of records to return (use in combination with `offset` to support pagination)
    + nama (optional, string, `afzal`) ... String full or partial `nama` (name) of the candidate. Will return all matching records.
    + partai (optional, string, `1`) ... String id of the `partai` (party) that the candidate is a member of
    + dapil (optional, string, `1101`) ... String id of the `dapil` (electoral district) that the candidate is running in.
    + provinsi (optional, string, `11`) ... String id of the `provinsi` (province) that the candidate is running in.
    + jenis_kelamin (optional, string, `L`) ... String `jenis_kelamin` (gender) of the candidate.
    + lembaga (optional, string, `DPD`) ... String `lembaga` (legislative body) that the candidate is running for.
    + tahun (optional, number, `2014`) ... Number `tahun` (election year) that the candidate is running for.
    + apiKey (required, string, `06ec082d057daa3d310b27483cc3962e`) ... String `apiKey` of the application.

### List Candidates [GET]
+ Response 200 (application/json)

        {
            "results": {
                "count": 4,
                "total": 4,
                "candidates": [
                    {
                        "id": "DPD1101",
                        "lembaga": "DPD",
                        "nama": "MUHAMMAD AFZAL MAHFUZ, S.H.",
                        "jenis_kelamin": "L",
                        "domisili": "KOTA BANDA ACEH",
                        "provinsi": {
                            "id": "11",
                            "nama": "ACEH"
                        },
                        "dapil": {},
                        "partai": {},
                        "urutan": "1",
                        "foto_url": "http://dct.kpu.go.id/images/foto/DPD/11.%20NAD/01.jpg"
                    },
                    {
                        "id": "DPD1103",
                        "lembaga": "DPD",
                        "nama": "Drs. H. ANHARUDDIN, S.E., M.M.",
                        "jenis_kelamin": "L",
                        "domisili": "KOTA SUBULUSSALAM",
                        "provinsi": {
                            "id": "11",
                            "nama": "ACEH"
                        },
                        "dapil": {},
                        "partai": {},
                        "urutan": "3",
                        "foto_url": "http://dct.kpu.go.id/images/foto/DPD/11.%20NAD/03.jpg"
                    },
                    {
                        "id": "DPR11010101",
                        "lembaga": "DPR",
                        "nama": "Prof. Dr. BACHTIAR ALY, MA",
                        "jenis_kelamin": "L",
                        "domisili": "KOTA TANGERANG SELATAN",
                        "provinsi": {
                            "id": "11",
                            "nama": "ACEH"
                        },
                        "dapil": {
                            "id": "1101",
                            "nama": "ACEH I"
                        },
                        "partai": {
                            "id": "1",
                            "nama": "Partai NasDem"
                        },
                        "urutan": "1",
                        "foto_url": "http://dct.kpu.go.id/images/foto/DPR/1101.%20ACEH%20I/01.%20NASDEM/01.%20PROF.%20DR.%20BACHTIAR%20ALY%2C%20MA.jpg"
                    },
                    {
                        "id": "DPR11010102",
                        "lembaga": "DPR",
                        "nama": "Drs. H. T PRIBADI",
                        "jenis_kelamin": "L",
                        "domisili": "KOTA BANDA ACEH",
                        "provinsi": {
                            "id": "11",
                            "nama": "ACEH"
                        },
                        "dapil": {
                            "id": "1101",
                            "nama": "ACEH I"
                        },
                        "partai": {
                            "id": "1",
                            "nama": "Partai NasDem"
                        },
                        "urutan": "2",
                        "foto_url": "http://dct.kpu.go.id/images/foto/DPR/1101.%20ACEH%20I/01.%20NASDEM/02.%20DRS.%20H.T.%20PRIBADI.JPG"
                    }
                ]
            }
        }

## Candidates [/candidates/{id}?apiKey={apiKey}]
A single Candidates object with all its details

+ Parameters
    + apiKey (required, string, `06ec082d057daa3d310b27483cc3962e`) ... String `apiKey` of the application.
    + id (required, string, `DPD1101`) ... String `id` of the Candidate to perform action with. Has example value.

### Retrieve a Candidate [GET]
+ Response 200 (application/json)

    + Header

            X-My-Header: The Value

    + Body

            {
                "results": {
                    "count": 1,
                    "total": 1,
                    "candidates": [
                        {
                            "id": "DPD1105",
                            "lembaga": "DPD",
                            "nama": "H. ASY'ARI, S.Pd.I.",
                            "jenis_kelamin": "L",
                            "domisili": "KOTA LANGSA",
                            "provinsi": {
                                "id": "11",
                                "nama": "ACEH"
                            },
                            "dapil": {},
                            "partai": {},
                            "urutan": "5",
                            "foto_url": "http://dct.kpu.go.id/images/foto/DPD/11.%20NAD/05.jpg"
                        }
                    ]
                }
            }


# Group Parties
Parties related resources of the **Candidates API**

## Parties Collection [/parties?apiKey={apiKey}]

+ Parameters
    + apiKey (required, string, `06ec082d057daa3d310b27483cc3962e`) ... String `apiKey` of the application.

### List all Parties [GET]
+ Response 200 (application/json)

        {
            "results": {
                "count": 3,
                "parties": [
                    {
                        "id": "1",
                        "nama": "Partai NasDem",
                        "singkatan": "Partai NasDem",
                        "situs": "http://www.partainasdem.org/"
                    },
                    {
                        "id": "2",
                        "nama": "Partai Kebangkitan Bangsa",
                        "singkatan": "PKB",
                        "situs": "http://www.dpp.pkb.or.id/"
                    },
                    {
                        "id": "3",
                        "nama": "Partai Keadilan Sejahtera",
                        "singkatan": "PKS",
                        "situs": "http://www.pks.or.id/"
                    }
                ]
            }
        }

## Parties [/parties/{id}?apiKey={apiKey}]
A single Parties object with all its details

+ Parameters
    + apiKey (required, string, `06ec082d057daa3d310b27483cc3962e`) ... String `apiKey` of the application.
    + id (required, string, `03`) ... String `id` of the Party to perform action with. Has example value.

### Retrieve a Party [GET]
+ Response 200 (application/json)

    + Header

            X-My-Header: The Value

    + Body

            {
                "results": {
                    "count": 1,
                    "parties": [
                        {
                            "id": "3",
                            "nama": "Partai Keadilan Sejahtera",
                            "singkatan": "PKS",
                            "situs": "http://www.pks.or.id/"
                        }
                    ]
                }
            }


# Group Provinces
Provinces related resources of the **Candidates API**

## Provinces Collection [/provinces?apiKey={apiKey}]

+ Parameters
    + apiKey (required, string, `06ec082d057daa3d310b27483cc3962e`) ... String `apiKey` of the application.

### List all Provinces [GET]
+ Response 200 (application/json)

        {
            "results": {
                "count": 2,
                "provinsi": [
                    {
                        "id": "11",
                        "nama": "ACEH",
                        "dapil": [
                            {
                                "id": "1101",
                                "nama": "ACEH I",
                                "provinsi": "ACEH"
                            },
                            {
                                "id": "1102",
                                "nama": "ACEH II",
                                "provinsi": "ACEH"
                            }
                        ]
                    },
                    {
                        "id": "12",
                        "nama": "SUMATERA UTARA",
                        "dapil": [
                            {
                                "id": "1201",
                                "nama": "SUMATERA UTARA I",
                                "provinsi": "SUMATERA UTARA"
                            },
                            {
                                "id": "1202",
                                "nama": "SUMATERA UTARA II",
                                "provinsi": "SUMATERA UTARA"
                            },
                            {
                                "id": "1203",
                                "nama": "SUMATERA UTARA III",
                                "provinsi": "SUMATERA UTARA"
                            }
                        ]
                    }
                ]
            }
        }


# Group Electoral Districts
Electoral Districts related resources of the **Candidates API**

## Electoral Districts Collection [/dapil?apiKey={apiKey}]

+ Parameters
    + apiKey (required, string, `06ec082d057daa3d310b27483cc3962e`) ... String `apiKey` of the application.

### List all Electoral Districts [GET]
+ Response 200 (application/json)

        {
            "results": {
                "count": 5,
                "dapil": [
                    {
                        "id": "1101",
                        "nama": "ACEH I",
                        "provinsi": {
                            "id": "11",
                            "nama": "ACEH"
                        }
                    },
                    {
                        "id": "1102",
                        "nama": "ACEH II",
                        "provinsi": {
                            "id": "11",
                            "nama": "ACEH"
                        }
                    },
                    {
                        "id": "1201",
                        "nama": "SUMATERA UTARA I",
                        "provinsi": {
                            "id": "12",
                            "nama": "SUMATERA UTARA"
                        }
                    },
                    {
                        "id": "1202",
                        "nama": "SUMATERA UTARA II",
                        "provinsi": {
                            "id": "12",
                            "nama": "SUMATERA UTARA"
                        }
                    },
                    {
                        "id": "1203",
                        "nama": "SUMATERA UTARA III",
                        "provinsi": {
                            "id": "12",
                            "nama": "SUMATERA UTARA"
                        }
                    }
                ]
            }
        }

