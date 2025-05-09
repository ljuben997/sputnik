enum MockResponses {
    static let albumsMutationResponse = """
    {
        "data": {
            "createAlbum": {
                "title": "Album Title"
            }
        }
    }
    """

    static let animeQueryResponse = """
    {
        "data": {
            "MediaListCollection": {
                "hasNextChunk": false,
                "lists": [
                    {
                        "name": "Completed",
                        "entries": [
                            {
                                "media": {
                                    "description": "It's been almost a year since Natsumi and her family moved from the town of Onigafuchi. Her grandmother, a native of Hinamizawa village, fears that they will be cursed for abandoning the mountains, but Natsumi has never been happier, making new friends and enjoying school life. When a terrible gas explosion in Hinamizawa wipes out everyone in the village, her grandmother is convinced it is the wrath of the village god.",
                                    "type": "MANGA"
                                },
                                "status": "COMPLETED"
                            },
                            {
                                "media": {
                                    "description": "In the twenty years since the Hinamizawa disaster, the small village has become a literal ghost town. Terrible rumors about the mysterious gas leak that claimed hundreds of lives have kept even the most curious at bay.",
                                    "type": "MANGA"
                                },
                                "status": "COMPLETED"
                            },
                            {
                                "media": {
                                    "description": "Whispered Words is the story of two high school girls, Sumika and Ushio. One is in love with the other, but unable to confess.",
                                    "type": "MANGA"
                                },
                                "status": "COMPLETED"
                            }
                        ]
                    }
                ]
            }
        }
    }
    """

    static let rickAndMortyMainQueryResponse = """
    {
        "data": {
            "characters": {
                "info": {
                    "count": 86,
                    "pages": 5,
                    "next": 2,
                    "prev": null
                },
                "results": [
                    {
                        "id": "1",
                        "name": "Rick Sanchez",
                        "species": "Human",
                        "type": "",
                        "gender": "Male",
                        "created": "2017-11-04T18:48:46.250Z",
                        "status": "Alive",
                        "origin": {
                            "id": "1",
                            "name": "Earth (C-137)",
                            "type": "Planet",
                            "dimension": "Dimension C-137",
                            "residents": [
                                {
                                    "id": "38",
                                    "name": "Beth Smith",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Female",
                                    "created": "2017-11-05T09:48:44.230Z",
                                    "status": "Alive"
                                },
                                {
                                    "id": "45",
                                    "name": "Bill",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-11-05T10:22:27.446Z",
                                    "status": "Alive"
                                },
                                {
                                    "id": "71",
                                    "name": "Conroy",
                                    "species": "Robot",
                                    "type": "",
                                    "gender": "unknown",
                                    "created": "2017-11-30T11:35:50.183Z",
                                    "status": "Dead"
                                },
                                {
                                    "id": "82",
                                    "name": "Cronenberg Rick",
                                    "species": "Cronenberg",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-11-30T14:28:54.596Z",
                                    "status": "unknown"
                                },
                                {
                                    "id": "83",
                                    "name": "Cronenberg Morty",
                                    "species": "Cronenberg",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-11-30T20:02:29.204Z",
                                    "status": "unknown"
                                },
                                {
                                    "id": "92",
                                    "name": "Davin",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-01T11:20:51.247Z",
                                    "status": "Dead"
                                },
                                {
                                    "id": "112",
                                    "name": "Eric McMan",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-26T13:40:06.005Z",
                                    "status": "Alive"
                                },
                                {
                                    "id": "114",
                                    "name": "Ethan",
                                    "species": "Human",
                                    "type": "Cronenberg",
                                    "gender": "Male",
                                    "created": "2017-12-26T16:01:13.904Z",
                                    "status": "unknown"
                                },
                                {
                                    "id": "116",
                                    "name": "Evil Beth Clone",
                                    "species": "Human",
                                    "type": "Clone",
                                    "gender": "Female",
                                    "created": "2017-12-26T16:10:47.781Z",
                                    "status": "Dead"
                                },
                                {
                                    "id": "117",
                                    "name": "Evil Jerry Clone",
                                    "species": "Human",
                                    "type": "Clone",
                                    "gender": "Male",
                                    "created": "2017-12-26T16:11:15.395Z",
                                    "status": "Dead"
                                },
                                {
                                    "id": "120",
                                    "name": "Evil Summer Clone",
                                    "species": "Human",
                                    "type": "Clone",
                                    "gender": "Female",
                                    "created": "2017-12-26T16:24:02.059Z",
                                    "status": "Dead"
                                },
                                {
                                    "id": "127",
                                    "name": "Frank Palicky",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-26T19:22:48.474Z",
                                    "status": "Dead"
                                },
                                {
                                    "id": "155",
                                    "name": "Harold",
                                    "species": "Cronenberg",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-29T15:41:18.773Z",
                                    "status": "Alive"
                                },
                                {
                                    "id": "169",
                                    "name": "Jacob",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-29T17:20:52.037Z",
                                    "status": "Alive"
                                },
                                {
                                    "id": "175",
                                    "name": "Jerry Smith",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-29T18:07:17.610Z",
                                    "status": "Alive"
                                },
                                {
                                    "id": "179",
                                    "name": "Jessica",
                                    "species": "Cronenberg",
                                    "type": "",
                                    "gender": "Female",
                                    "created": "2017-12-29T18:34:37.806Z",
                                    "status": "Alive"
                                },
                                {
                                    "id": "186",
                                    "name": "Joyce Smith",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Female",
                                    "created": "2017-12-29T18:58:34.530Z",
                                    "status": "Alive"
                                },
                                {
                                    "id": "201",
                                    "name": "Leonard Smith",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-30T12:51:27.835Z",
                                    "status": "Alive"
                                },
                                {
                                    "id": "216",
                                    "name": "MC Haps",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-30T14:30:06.479Z",
                                    "status": "Alive"
                                },
                                {
                                    "id": "239",
                                    "name": "Mr. Goldenfold",
                                    "species": "Cronenberg",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-30T17:42:11.894Z",
                                    "status": "Alive"
                                },
                                {
                                    "id": "271",
                                    "name": "Principal Vagina",
                                    "species": "Cronenberg",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-31T14:08:43.602Z",
                                    "status": "Alive"
                                },
                                {
                                    "id": "302",
                                    "name": "Ruben",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2018-01-05T14:03:21.824Z",
                                    "status": "Dead"
                                },
                                {
                                    "id": "303",
                                    "name": "Samantha",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Female",
                                    "created": "2018-01-05T14:09:03.150Z",
                                    "status": "Alive"
                                },
                                {
                                    "id": "338",
                                    "name": "Summer Smith",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Female",
                                    "created": "2018-01-10T16:55:03.390Z",
                                    "status": "Alive"
                                },
                                {
                                    "id": "343",
                                    "name": "Tammy Guetermann",
                                    "species": "Cronenberg",
                                    "type": "",
                                    "gender": "Female",
                                    "created": "2018-01-10T17:27:04.773Z",
                                    "status": "Alive"
                                },
                                {
                                    "id": "356",
                                    "name": "Tom Randolph",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2018-01-10T18:07:03.215Z",
                                    "status": "Alive"
                                },
                                {
                                    "id": "394",
                                    "name": "Davin",
                                    "species": "Cronenberg",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2018-01-20T19:48:42.201Z",
                                    "status": "Dead"
                                }
                            ]
                        }
                    },
                    {
                        "id": "8",
                        "name": "Adjudicator Rick",
                        "species": "Human",
                        "type": "",
                        "gender": "Male",
                        "created": "2017-11-04T20:03:34.737Z",
                        "status": "Dead",
                        "origin": {
                            "id": null,
                            "name": "unknown",
                            "type": null,
                            "dimension": null,
                            "residents": []
                        }
                    },
                    {
                        "id": "19",
                        "name": "Antenna Rick",
                        "species": "Human",
                        "type": "Human with antennae",
                        "gender": "Male",
                        "created": "2017-11-04T22:28:13.756Z",
                        "status": "unknown",
                        "origin": {
                            "id": null,
                            "name": "unknown",
                            "type": null,
                            "dimension": null,
                            "residents": []
                        }
                    },
                    {
                        "id": "22",
                        "name": "Aqua Rick",
                        "species": "Humanoid",
                        "type": "Fish-Person",
                        "gender": "Male",
                        "created": "2017-11-04T22:41:07.171Z",
                        "status": "unknown",
                        "origin": {
                            "id": null,
                            "name": "unknown",
                            "type": null,
                            "dimension": null,
                            "residents": []
                        }
                    },
                    {
                        "id": "48",
                        "name": "Black Rick",
                        "species": "Human",
                        "type": "",
                        "gender": "Male",
                        "created": "2017-11-05T11:15:26.044Z",
                        "status": "Alive",
                        "origin": {
                            "id": null,
                            "name": "unknown",
                            "type": null,
                            "dimension": null,
                            "residents": []
                        }
                    },
                    {
                        "id": "56",
                        "name": "Bootleg Portal Chemist Rick",
                        "species": "Human",
                        "type": "",
                        "gender": "Male",
                        "created": "2017-11-05T11:34:16.447Z",
                        "status": "Dead",
                        "origin": {
                            "id": null,
                            "name": "unknown",
                            "type": null,
                            "dimension": null,
                            "residents": []
                        }
                    },
                    {
                        "id": "69",
                        "name": "Commander Rick",
                        "species": "Human",
                        "type": "",
                        "gender": "Male",
                        "created": "2017-11-30T11:28:06.461Z",
                        "status": "Dead",
                        "origin": {
                            "id": null,
                            "name": "unknown",
                            "type": null,
                            "dimension": null,
                            "residents": []
                        }
                    },
                    {
                        "id": "72",
                        "name": "Cool Rick",
                        "species": "Human",
                        "type": "",
                        "gender": "Male",
                        "created": "2017-11-30T11:41:11.542Z",
                        "status": "Alive",
                        "origin": {
                            "id": "26",
                            "name": "Earth (K-83)",
                            "type": "Planet",
                            "dimension": "Dimension K-83",
                            "residents": []
                        }
                    },
                    {
                        "id": "74",
                        "name": "Cop Rick",
                        "species": "Human",
                        "type": "",
                        "gender": "Male",
                        "created": "2017-11-30T11:48:18.950Z",
                        "status": "Alive",
                        "origin": {
                            "id": null,
                            "name": "unknown",
                            "type": null,
                            "dimension": null,
                            "residents": []
                        }
                    },
                    {
                        "id": "78",
                        "name": "Cowboy Rick",
                        "species": "Human",
                        "type": "",
                        "gender": "Male",
                        "created": "2017-11-30T14:15:18.347Z",
                        "status": "Alive",
                        "origin": {
                            "id": null,
                            "name": "unknown",
                            "type": null,
                            "dimension": null,
                            "residents": []
                        }
                    },
                    {
                        "id": "86",
                        "name": "Cyclops Rick",
                        "species": "Humanoid",
                        "type": "",
                        "gender": "Male",
                        "created": "2017-11-30T20:53:10.382Z",
                        "status": "Dead",
                        "origin": {
                            "id": null,
                            "name": "unknown",
                            "type": null,
                            "dimension": null,
                            "residents": []
                        }
                    },
                    {
                        "id": "103",
                        "name": "Doofus Rick",
                        "species": "Human",
                        "type": "",
                        "gender": "Male",
                        "created": "2017-12-01T12:29:27.984Z",
                        "status": "unknown",
                        "origin": {
                            "id": "31",
                            "name": "Earth (J19ζ7)",
                            "type": "Planet",
                            "dimension": "Dimension J19ζ7",
                            "residents": []
                        }
                    },
                    {
                        "id": "119",
                        "name": "Evil Rick",
                        "species": "Humanoid",
                        "type": "Robot",
                        "gender": "Male",
                        "created": "2017-12-26T16:17:16.472Z",
                        "status": "Dead",
                        "origin": {
                            "id": null,
                            "name": "unknown",
                            "type": null,
                            "dimension": null,
                            "residents": []
                        }
                    },
                    {
                        "id": "135",
                        "name": "Garment District Rick",
                        "species": "Human",
                        "type": "",
                        "gender": "Male",
                        "created": "2017-12-26T20:51:43.614Z",
                        "status": "Dead",
                        "origin": {
                            "id": null,
                            "name": "unknown",
                            "type": null,
                            "dimension": null,
                            "residents": []
                        }
                    },
                    {
                        "id": "164",
                        "name": "Insurance Rick",
                        "species": "Human",
                        "type": "",
                        "gender": "Male",
                        "created": "2017-12-29T17:03:08.645Z",
                        "status": "unknown",
                        "origin": {
                            "id": null,
                            "name": "unknown",
                            "type": null,
                            "dimension": null,
                            "residents": []
                        }
                    },
                    {
                        "id": "165",
                        "name": "Investigator Rick",
                        "species": "Human",
                        "type": "",
                        "gender": "Male",
                        "created": "2017-12-29T17:05:15.514Z",
                        "status": "Dead",
                        "origin": {
                            "id": null,
                            "name": "unknown",
                            "type": null,
                            "dimension": null,
                            "residents": []
                        }
                    },
                    {
                        "id": "187",
                        "name": "Juggling Rick",
                        "species": "Human",
                        "type": "",
                        "gender": "Male",
                        "created": "2017-12-29T18:59:47.440Z",
                        "status": "unknown",
                        "origin": {
                            "id": null,
                            "name": "unknown",
                            "type": null,
                            "dimension": null,
                            "residents": []
                        }
                    },
                    {
                        "id": "215",
                        "name": "Maximums Rickimus",
                        "species": "Human",
                        "type": "",
                        "gender": "Male",
                        "created": "2017-12-30T14:27:55.489Z",
                        "status": "Dead",
                        "origin": {
                            "id": null,
                            "name": "unknown",
                            "type": null,
                            "dimension": null,
                            "residents": []
                        }
                    },
                    {
                        "id": "220",
                        "name": "Mega Fruit Farmer Rick",
                        "species": "Human",
                        "type": "",
                        "gender": "Male",
                        "created": "2017-12-30T14:35:30.736Z",
                        "status": "Alive",
                        "origin": {
                            "id": null,
                            "name": "unknown",
                            "type": null,
                            "dimension": null,
                            "residents": []
                        }
                    },
                    {
                        "id": "231",
                        "name": "Morty Rick",
                        "species": "Human",
                        "type": "",
                        "gender": "Male",
                        "created": "2017-12-30T16:23:45.894Z",
                        "status": "unknown",
                        "origin": {
                            "id": null,
                            "name": "unknown",
                            "type": null,
                            "dimension": null,
                            "residents": []
                        }
                    }
                ]
            },
            "episode": {
                "id": "23",
                "name": "Rickmancing the Stone",
                "air_date": "July 30, 2017",
                "episode": "S03E02",
                "created": "2017-11-10T12:56:36.100Z",
                "characters": [
                    {
                        "name": "Rick Sanchez",
                        "species": "Human",
                        "type": "",
                        "gender": "Male",
                        "created": "2017-11-04T18:48:46.250Z",
                        "status": "Alive",
                        "origin": {
                            "id": "1",
                            "name": "Earth (C-137)",
                            "type": "Planet",
                            "dimension": "Dimension C-137",
                            "residents": [
                                {
                                    "name": "Beth Smith",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Female",
                                    "created": "2017-11-05T09:48:44.230Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Bill",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-11-05T10:22:27.446Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Conroy",
                                    "species": "Robot",
                                    "type": "",
                                    "gender": "unknown",
                                    "created": "2017-11-30T11:35:50.183Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Cronenberg Rick",
                                    "species": "Cronenberg",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-11-30T14:28:54.596Z",
                                    "status": "unknown"
                                },
                                {
                                    "name": "Cronenberg Morty",
                                    "species": "Cronenberg",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-11-30T20:02:29.204Z",
                                    "status": "unknown"
                                },
                                {
                                    "name": "Davin",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-01T11:20:51.247Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Eric McMan",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-26T13:40:06.005Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Ethan",
                                    "species": "Human",
                                    "type": "Cronenberg",
                                    "gender": "Male",
                                    "created": "2017-12-26T16:01:13.904Z",
                                    "status": "unknown"
                                },
                                {
                                    "name": "Evil Beth Clone",
                                    "species": "Human",
                                    "type": "Clone",
                                    "gender": "Female",
                                    "created": "2017-12-26T16:10:47.781Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Evil Jerry Clone",
                                    "species": "Human",
                                    "type": "Clone",
                                    "gender": "Male",
                                    "created": "2017-12-26T16:11:15.395Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Evil Summer Clone",
                                    "species": "Human",
                                    "type": "Clone",
                                    "gender": "Female",
                                    "created": "2017-12-26T16:24:02.059Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Frank Palicky",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-26T19:22:48.474Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Harold",
                                    "species": "Cronenberg",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-29T15:41:18.773Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Jacob",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-29T17:20:52.037Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Jerry Smith",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-29T18:07:17.610Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Jessica",
                                    "species": "Cronenberg",
                                    "type": "",
                                    "gender": "Female",
                                    "created": "2017-12-29T18:34:37.806Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Joyce Smith",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Female",
                                    "created": "2017-12-29T18:58:34.530Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Leonard Smith",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-30T12:51:27.835Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "MC Haps",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-30T14:30:06.479Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Mr. Goldenfold",
                                    "species": "Cronenberg",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-30T17:42:11.894Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Principal Vagina",
                                    "species": "Cronenberg",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-31T14:08:43.602Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Ruben",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2018-01-05T14:03:21.824Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Samantha",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Female",
                                    "created": "2018-01-05T14:09:03.150Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Summer Smith",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Female",
                                    "created": "2018-01-10T16:55:03.390Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Tammy Guetermann",
                                    "species": "Cronenberg",
                                    "type": "",
                                    "gender": "Female",
                                    "created": "2018-01-10T17:27:04.773Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Tom Randolph",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2018-01-10T18:07:03.215Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Davin",
                                    "species": "Cronenberg",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2018-01-20T19:48:42.201Z",
                                    "status": "Dead"
                                }
                            ]
                        }
                    },
                    {
                        "name": "Morty Smith",
                        "species": "Human",
                        "type": "",
                        "gender": "Male",
                        "created": "2017-11-04T18:50:21.651Z",
                        "status": "Alive",
                        "origin": {
                            "id": null,
                            "name": "unknown",
                            "type": null,
                            "dimension": null,
                            "residents": []
                        }
                    },
                    {
                        "name": "Summer Smith",
                        "species": "Human",
                        "type": "",
                        "gender": "Female",
                        "created": "2017-11-04T19:09:56.428Z",
                        "status": "Alive",
                        "origin": {
                            "id": "20",
                            "name": "Earth (Replacement Dimension)",
                            "type": "Planet",
                            "dimension": "Replacement Dimension",
                            "residents": [
                                {
                                    "name": "Summer Smith",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Female",
                                    "created": "2017-11-04T19:09:56.428Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Beth Smith",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Female",
                                    "created": "2017-11-04T19:22:43.665Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Jerry Smith",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-11-04T19:26:56.301Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Agency Director",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-11-04T20:06:54.976Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Albert Einstein",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-11-04T20:20:20.965Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Alien Googah",
                                    "species": "Alien",
                                    "type": "",
                                    "gender": "unknown",
                                    "created": "2017-11-04T20:33:30.779Z",
                                    "status": "unknown"
                                },
                                {
                                    "name": "Amish Cyborg",
                                    "species": "Alien",
                                    "type": "Parasite",
                                    "gender": "Male",
                                    "created": "2017-11-04T21:12:45.235Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Baby Wizard",
                                    "species": "Alien",
                                    "type": "Parasite",
                                    "gender": "Male",
                                    "created": "2017-11-05T09:15:11.286Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Bearded Lady",
                                    "species": "Alien",
                                    "type": "Parasite",
                                    "gender": "Female",
                                    "created": "2017-11-05T09:18:04.184Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Blim Blam",
                                    "species": "Alien",
                                    "type": "Korblock",
                                    "gender": "Male",
                                    "created": "2017-11-05T11:21:43.756Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Brad",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-11-05T11:40:02.554Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Brad Anderson",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-11-05T11:41:38.964Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Chris",
                                    "species": "Alien",
                                    "type": "Organic gun",
                                    "gender": "unknown",
                                    "created": "2017-11-05T12:25:03.541Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Coach Feratu (Balik Alistane)",
                                    "species": "Mythological Creature",
                                    "type": "Vampire",
                                    "gender": "Male",
                                    "created": "2017-11-30T11:10:10.491Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Cousin Nicky",
                                    "species": "Alien",
                                    "type": "Parasite",
                                    "gender": "Male",
                                    "created": "2017-11-30T14:11:52.882Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Cynthia",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Female",
                                    "created": "2017-11-30T21:16:35.633Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Doofus Rick",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-01T12:29:27.984Z",
                                    "status": "unknown"
                                },
                                {
                                    "name": "Dr. Wong",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Female",
                                    "created": "2017-12-26T12:55:58.449Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Duck With Muscles",
                                    "species": "Alien",
                                    "type": "Parasite",
                                    "gender": "Male",
                                    "created": "2017-12-26T13:17:40.686Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Eric Stoltz Mask Morty",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-26T13:43:29.296Z",
                                    "status": "unknown"
                                },
                                {
                                    "name": "Ethan",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-26T16:01:50.939Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Father Bob",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-26T17:31:29.113Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Frankenstein's Monster",
                                    "species": "Alien",
                                    "type": "Parasite",
                                    "gender": "Male",
                                    "created": "2017-12-26T19:24:56.679Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Gene",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-27T18:14:57.885Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "General Nathan",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-27T18:22:18.387Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Ghost in a Jar",
                                    "species": "Alien",
                                    "type": "Parasite",
                                    "gender": "Genderless",
                                    "created": "2017-12-27T19:14:14.545Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Gobo",
                                    "species": "Alien",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-29T11:38:29.578Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Gordon Lunas",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-29T11:44:00.169Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Gwendolyn",
                                    "species": "Robot",
                                    "type": "Gazorpian reproduction robot",
                                    "gender": "Female",
                                    "created": "2017-12-29T12:31:50.388Z",
                                    "status": "unknown"
                                },
                                {
                                    "name": "Hamurai",
                                    "species": "Alien",
                                    "type": "Parasite",
                                    "gender": "Male",
                                    "created": "2017-12-29T15:32:05.287Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Invisi-trooper",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-29T17:06:28.325Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Izzy",
                                    "species": "Animal",
                                    "type": "Cat",
                                    "gender": "unknown",
                                    "created": "2017-12-29T17:07:59.024Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Jacqueline",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Female",
                                    "created": "2017-12-29T17:22:17.707Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Jaguar",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-29T17:25:38.138Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Jamey",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-29T17:30:20.654Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Jessica",
                                    "species": "Human",
                                    "type": "Time God",
                                    "gender": "Female",
                                    "created": "2017-12-29T18:36:27.225Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Jessica's Friend",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Female",
                                    "created": "2017-12-29T18:47:23.345Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Jim",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-29T18:49:48.953Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Joseph Eli Lipkip",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-29T18:56:15.622Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Katarina",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Female",
                                    "created": "2017-12-29T19:13:57.070Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Keara",
                                    "species": "Alien",
                                    "type": "Krootabulan",
                                    "gender": "Female",
                                    "created": "2017-12-29T19:26:06.900Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Lil B",
                                    "species": "Alien",
                                    "type": "Snail alien",
                                    "gender": "Male",
                                    "created": "2017-12-30T12:54:31.725Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Lucy",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Female",
                                    "created": "2017-12-30T14:01:23.319Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Mechanical Morty",
                                    "species": "Robot",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-30T14:32:17.158Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Mechanical Rick",
                                    "species": "Robot",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-30T14:33:16.920Z",
                                    "status": "unknown"
                                },
                                {
                                    "name": "Mechanical Summer",
                                    "species": "Robot",
                                    "type": "",
                                    "gender": "Female",
                                    "created": "2017-12-30T14:33:49.392Z",
                                    "status": "unknown"
                                },
                                {
                                    "name": "Mitch",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-30T16:08:38.157Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Morty Jr.",
                                    "species": "Humanoid",
                                    "type": "Human Gazorpian",
                                    "gender": "Male",
                                    "created": "2017-12-30T16:20:51.391Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Morty K-22",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-30T16:33:49.577Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Morty Smith",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-30T16:35:01.223Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Mr. Beauregard",
                                    "species": "Alien",
                                    "type": "Parasite",
                                    "gender": "Male",
                                    "created": "2017-12-30T17:28:28.409Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Mr. Benson",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-30T17:30:31.757Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Mr. Goldenfold",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-30T17:42:56.349Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Mr. Marklovitz",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-30T17:46:19.052Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Mr. Needful",
                                    "species": "Humanoid",
                                    "type": "The Devil",
                                    "gender": "Male",
                                    "created": "2017-12-30T17:54:06.996Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Mr. Poopybutthole",
                                    "species": "Poopybutthole",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-30T18:03:48.054Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Mrs. Lipkip",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Female",
                                    "created": "2017-12-30T18:05:59.999Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Mrs. Refrigerator",
                                    "species": "Alien",
                                    "type": "Parasite",
                                    "gender": "Female",
                                    "created": "2017-12-30T18:12:38.369Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Nancy",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Female",
                                    "created": "2017-12-31T12:46:54.095Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Orthodox Jew",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-31T13:19:29.825Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Pencilvester",
                                    "species": "Alien",
                                    "type": "Parasite",
                                    "gender": "Male",
                                    "created": "2017-12-31T13:33:48.488Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Photography Raptor",
                                    "species": "Alien",
                                    "type": "Parasite",
                                    "gender": "unknown",
                                    "created": "2017-12-31T13:40:32.312Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Pickle Rick",
                                    "species": "unknown",
                                    "type": "Pickle",
                                    "gender": "Male",
                                    "created": "2017-12-31T13:47:10.617Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Principal Vagina",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-31T14:09:09.071Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Rat Boss",
                                    "species": "Animal",
                                    "type": "Rat",
                                    "gender": "unknown",
                                    "created": "2017-12-31T14:17:21.782Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Reverse Giraffe",
                                    "species": "Alien",
                                    "type": "Parasite",
                                    "gender": "Male",
                                    "created": "2017-12-31T14:22:46.285Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Rick K-22",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-31T20:20:40.484Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Rick Sanchez",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-31T20:22:29.032Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Sleepy Gary",
                                    "species": "Alien",
                                    "type": "Parasite",
                                    "gender": "Male",
                                    "created": "2018-01-05T15:17:26.876Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Slippery Stair",
                                    "species": "Mythological Creature",
                                    "type": "Slug",
                                    "gender": "Male",
                                    "created": "2018-01-10T16:11:09.964Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Slow Mobius",
                                    "species": "Humanoid",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2018-01-10T16:13:26.380Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Stacy",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Female",
                                    "created": "2018-01-10T16:31:10.465Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Steve",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2018-01-10T16:39:34.837Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Taddy Mason",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2018-01-10T17:07:09.052Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Terry",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2018-01-10T17:37:51.767Z",
                                    "status": "unknown"
                                },
                                {
                                    "name": "President Curtis",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2018-01-10T17:43:37.411Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Tinkles",
                                    "species": "Alien",
                                    "type": "Parasite",
                                    "gender": "Female",
                                    "created": "2018-01-10T17:58:51.840Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Tiny Rick",
                                    "species": "Human",
                                    "type": "Clone",
                                    "gender": "Male",
                                    "created": "2018-01-10T18:00:35.848Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Toby Matthews",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2018-01-10T18:02:03.402Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Tommy's Clone",
                                    "species": "Human",
                                    "type": "Clone",
                                    "gender": "Male",
                                    "created": "2018-01-10T18:07:45.541Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Toxic Morty",
                                    "species": "Humanoid",
                                    "type": "Morty's toxic side",
                                    "gender": "Male",
                                    "created": "2018-01-10T18:18:05.422Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Toxic Rick",
                                    "species": "Humanoid",
                                    "type": "Rick's toxic side",
                                    "gender": "Male",
                                    "created": "2018-01-10T18:20:41.703Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Trandor",
                                    "species": "Alien",
                                    "type": "Krootabulan",
                                    "gender": "Male",
                                    "created": "2018-01-10T18:54:36.578Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Tricia Lange",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Female",
                                    "created": "2018-01-10T18:59:31.842Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Vampire Master",
                                    "species": "Mythological Creature",
                                    "type": "Vampire",
                                    "gender": "Male",
                                    "created": "2018-01-10T19:23:45.478Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Voltematron",
                                    "species": "Alien",
                                    "type": "Parasite",
                                    "gender": "unknown",
                                    "created": "2018-01-10T19:29:08.116Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Zick Zack",
                                    "species": "Alien",
                                    "type": "Floop Floopian",
                                    "gender": "Male",
                                    "created": "2018-01-10T20:00:05.681Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Uncle Steve",
                                    "species": "Alien",
                                    "type": "Parasite",
                                    "gender": "Male",
                                    "created": "2018-01-14T13:34:50.096Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Morty Jr's interviewer",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2018-04-15T17:43:56.832Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Guy from The Bachelor",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2018-04-15T17:45:38.589Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Trunkphobic suspenders guy",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2018-04-15T20:31:46.065Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Synthetic Laser Eels",
                                    "species": "Animal",
                                    "type": "Eel",
                                    "gender": "unknown",
                                    "created": "2018-04-16T21:08:47.956Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Pripudlian",
                                    "species": "Alien",
                                    "type": "Pripudlian",
                                    "gender": "unknown",
                                    "created": "2018-04-16T22:21:57.962Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Michael",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2018-05-01T11:51:10.604Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Michael's Lawyer",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2018-05-01T11:57:16.266Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Veterinary",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Female",
                                    "created": "2018-05-01T11:58:43.275Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Veterinary Nurse",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2018-05-01T11:59:15.544Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Simon",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2018-05-01T14:20:10.187Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Vampire Master's Assistant",
                                    "species": "Mythological Creature",
                                    "type": "Vampire",
                                    "gender": "Male",
                                    "created": "2018-05-01T15:20:15.582Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Morphizer-XE Customer Support",
                                    "species": "Alien",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2018-05-22T16:46:18.038Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Morphizer-XE Customer Support",
                                    "species": "Alien",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2018-05-22T16:46:37.603Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Morphizer-XE Customer Support",
                                    "species": "Alien",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2018-05-22T16:46:50.518Z",
                                    "status": "unknown"
                                },
                                {
                                    "name": "Little Voltron",
                                    "species": "Robot",
                                    "type": "",
                                    "gender": "Genderless",
                                    "created": "2018-05-22T17:07:21.833Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Varrix",
                                    "species": "Alien",
                                    "type": "",
                                    "gender": "unknown",
                                    "created": "2018-05-22T17:49:13.883Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Secretary of the Interior",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2018-05-22T17:51:07.373Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Hologram Rick",
                                    "species": "Humanoid",
                                    "type": "Hologram",
                                    "gender": "Male",
                                    "created": "2020-05-02T10:30:38.622Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Bully",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2020-05-02T12:22:11.339Z",
                                    "status": "unknown"
                                },
                                {
                                    "name": "Anchorman",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2020-05-02T12:23:38.655Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Anchorwoman",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Female",
                                    "created": "2020-05-02T12:24:07.452Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Morty’s Lawyer",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2020-05-02T12:25:59.290Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Judge",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Female",
                                    "created": "2020-05-02T12:27:08.223Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Public Opinion Judge",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Female",
                                    "created": "2020-05-02T12:28:05.671Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Wasp Rick",
                                    "species": "Animal",
                                    "type": "Wasp",
                                    "gender": "Male",
                                    "created": "2020-05-02T12:36:47.872Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Wasp Rick’s Clone",
                                    "species": "Animal",
                                    "type": "Wasp",
                                    "gender": "Male",
                                    "created": "2020-05-02T12:38:18.097Z",
                                    "status": "unknown"
                                },
                                {
                                    "name": "Boglin",
                                    "species": "unknown",
                                    "type": "Toy",
                                    "gender": "unknown",
                                    "created": "2020-05-02T12:50:15.005Z",
                                    "status": "unknown"
                                },
                                {
                                    "name": "Kirkland Brand Mr. Meeseeks",
                                    "species": "Humanoid",
                                    "type": "Meeseeks",
                                    "gender": "Male",
                                    "created": "2020-05-02T12:52:58.134Z",
                                    "status": "unknown"
                                },
                                {
                                    "name": "Danny Publitz",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2020-05-02T13:14:28.386Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Tony's Dad",
                                    "species": "Alien",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2020-05-02T13:52:06.880Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Jeff",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2020-05-02T13:54:21.374Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Josiah",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2020-05-02T13:54:48.651Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Maggie",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Female",
                                    "created": "2020-05-02T13:55:15.098Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Priest Witherspoon",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2020-05-02T13:55:45.767Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Richard",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2020-05-02T13:56:14.834Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Running Bird",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2020-05-02T13:56:45.926Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Secretary at Tony's",
                                    "species": "Alien",
                                    "type": "",
                                    "gender": "Female",
                                    "created": "2020-05-02T13:57:49.250Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Netflix Executive",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2020-05-07T11:19:57.540Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Balthromaw",
                                    "species": "Mythological Creature",
                                    "type": "Dragon",
                                    "gender": "Male",
                                    "created": "2020-05-07T11:32:16.357Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Talking Cat",
                                    "species": "Animal",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2020-05-07T11:33:37.456Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Chachi",
                                    "species": "Alien",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2020-05-07T12:01:38.426Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Snake Resistance Robot",
                                    "species": "Robot",
                                    "type": "Human-Snake hybrid",
                                    "gender": "Genderless",
                                    "created": "2020-05-07T12:15:50.438Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Bar Customer",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2020-05-07T12:37:52.695Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Bartender",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Female",
                                    "created": "2020-05-07T12:38:23.983Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "PC Basketball Player",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2020-05-07T12:42:24.982Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Pet Shop Employee",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2020-05-07T12:46:51.424Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "High Pilot",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2020-05-07T12:55:35.833Z",
                                    "status": "unknown"
                                },
                                {
                                    "name": "High Pilot",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2020-05-07T12:56:10.200Z",
                                    "status": "unknown"
                                },
                                {
                                    "name": "Phoenixperson",
                                    "species": "Alien",
                                    "type": "Cyborg",
                                    "gender": "Male",
                                    "created": "2020-08-05T12:43:16.671Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Defiance Beth",
                                    "species": "Human",
                                    "type": "Clone",
                                    "gender": "Female",
                                    "created": "2020-08-13T12:48:55.885Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Mr. Nimbus",
                                    "species": "Mythological Creature",
                                    "type": "Sexy Aquaman",
                                    "gender": "Male",
                                    "created": "2021-10-16T11:55:58.042Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Adam",
                                    "species": "Humanoid",
                                    "type": "Narnian",
                                    "gender": "Male",
                                    "created": "2021-10-16T13:18:13.644Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Mr. Nimbus Secretary",
                                    "species": "Animal",
                                    "type": "Starfish",
                                    "gender": "Female",
                                    "created": "2021-10-16T13:45:26.155Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Mr. Nimbus' Squid",
                                    "species": "Animal",
                                    "type": "Squid",
                                    "gender": "Male",
                                    "created": "2021-10-16T13:51:28.877Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Scarecrow Rick",
                                    "species": "Robot",
                                    "type": "Decoy",
                                    "gender": "Male",
                                    "created": "2021-10-16T15:18:02.052Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Scarecrow Summer",
                                    "species": "Robot",
                                    "type": "Decoy",
                                    "gender": "Female",
                                    "created": "2021-10-16T15:19:13.080Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Scarecrow Jerry",
                                    "species": "Robot",
                                    "type": "Decoy",
                                    "gender": "Male",
                                    "created": "2021-10-16T15:21:40.918Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Scarecrow Morty",
                                    "species": "Robot",
                                    "type": "Decoy",
                                    "gender": "Male",
                                    "created": "2021-10-16T15:22:35.204Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Scarecrow Beth",
                                    "species": "Robot",
                                    "type": "Decoy",
                                    "gender": "Female",
                                    "created": "2021-10-16T15:23:21.971Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Glockenspiel Jerry",
                                    "species": "Robot",
                                    "type": "Decoy",
                                    "gender": "Male",
                                    "created": "2021-10-16T15:32:27.166Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Glockenspiel Beth",
                                    "species": "Robot",
                                    "type": "Decoy",
                                    "gender": "Female",
                                    "created": "2021-10-16T15:34:41.082Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Glockenspiel Rick",
                                    "species": "Robot",
                                    "type": "Decoy",
                                    "gender": "Male",
                                    "created": "2021-10-16T15:36:04.423Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Glockenspiel Summer",
                                    "species": "Robot",
                                    "type": "Decoy",
                                    "gender": "Female",
                                    "created": "2021-10-16T15:36:59.730Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Glockenspiel Morty",
                                    "species": "Robot",
                                    "type": "Decoy",
                                    "gender": "Male",
                                    "created": "2021-10-16T15:37:40.381Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Wicker Beth",
                                    "species": "Robot",
                                    "type": "Decoy",
                                    "gender": "Female",
                                    "created": "2021-10-16T15:40:01.248Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Wicker Rick",
                                    "species": "Robot",
                                    "type": "Decoy",
                                    "gender": "Male",
                                    "created": "2021-10-16T15:40:51.046Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Wicker Morty",
                                    "species": "Robot",
                                    "type": "Decoy",
                                    "gender": "Male",
                                    "created": "2021-10-16T15:41:28.941Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Wicker Summer",
                                    "species": "Robot",
                                    "type": "Decoy",
                                    "gender": "Female",
                                    "created": "2021-10-16T15:42:51.860Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Metal Rick",
                                    "species": "Robot",
                                    "type": "Decoy",
                                    "gender": "Male",
                                    "created": "2021-10-16T15:43:50.568Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Gun Brain Rick",
                                    "species": "Robot",
                                    "type": "Decoy",
                                    "gender": "Male",
                                    "created": "2021-10-16T15:46:56.288Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Mr. Always Wants to be Hunted",
                                    "species": "Poopybutthole",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2021-10-16T15:51:02.924Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Squid Costume Beth",
                                    "species": "Robot",
                                    "type": "Decoy",
                                    "gender": "Female",
                                    "created": "2021-10-16T15:55:49.506Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Squid Costume Jerry",
                                    "species": "Robot",
                                    "type": "Decoy",
                                    "gender": "Male",
                                    "created": "2021-10-16T16:00:00.400Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Squid Costume Morty",
                                    "species": "Robot",
                                    "type": "Decoy",
                                    "gender": "Male",
                                    "created": "2021-10-16T16:01:02.238Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Squid Costume Rick",
                                    "species": "Robot",
                                    "type": "Decoy",
                                    "gender": "Male",
                                    "created": "2021-10-16T16:01:52.437Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Squid Costume Summer",
                                    "species": "Robot",
                                    "type": "Decoy",
                                    "gender": "Female",
                                    "created": "2021-10-16T16:03:02.153Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Steve",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2021-10-16T16:06:00.878Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Too Cute to Murder Beth",
                                    "species": "Robot",
                                    "type": "Decoy",
                                    "gender": "Female",
                                    "created": "2021-10-17T09:40:13.581Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Too Cute to Murder Rick",
                                    "species": "Robot",
                                    "type": "Decoy",
                                    "gender": "Male",
                                    "created": "2021-10-17T09:40:51.620Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Too Cute to Murder Jerry",
                                    "species": "Robot",
                                    "type": "Decoy",
                                    "gender": "Male",
                                    "created": "2021-10-17T09:41:30.782Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Too Cute to Murder Morty",
                                    "species": "Robot",
                                    "type": "Decoy",
                                    "gender": "Male",
                                    "created": "2021-10-17T09:42:15.208Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Too Cute to Murder Summer",
                                    "species": "Robot",
                                    "type": "Decoy",
                                    "gender": "Female",
                                    "created": "2021-10-17T09:42:51.073Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Planetina",
                                    "species": "Humanoid",
                                    "type": "Summon",
                                    "gender": "Female",
                                    "created": "2021-10-17T09:50:18.307Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Diesel Weasel",
                                    "species": "Animal",
                                    "type": "Weasel",
                                    "gender": "Male",
                                    "created": "2021-10-17T09:55:17.683Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Eddie",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2021-10-17T09:57:07.971Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Xing Ho",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Female",
                                    "created": "2021-10-17T09:57:46.574Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Air Tina-Teer",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Female",
                                    "created": "2021-10-17T09:58:49.388Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Water Tina-Teer",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2021-10-17T09:59:26.786Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Planetina Buyer",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2021-10-17T10:00:06.914Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Tony Galopagus",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2021-10-17T10:01:10.143Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Sticky",
                                    "species": "unknown",
                                    "type": "Super Sperm Monster",
                                    "gender": "Male",
                                    "created": "2021-10-17T10:09:46.047Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Professor Shabooboo",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2021-10-17T10:10:44.560Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Sperm Queen",
                                    "species": "unknown",
                                    "type": "Super Sperm Monster",
                                    "gender": "Female",
                                    "created": "2021-10-17T10:12:05.246Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "CHUD King",
                                    "species": "Animal",
                                    "type": "CHUD",
                                    "gender": "Male",
                                    "created": "2021-10-17T10:32:39.601Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Princess Ponietta",
                                    "species": "Animal",
                                    "type": "CHUD",
                                    "gender": "Female",
                                    "created": "2021-10-17T10:35:15.825Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Blazen",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2021-10-17T11:59:00.689Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Kathy Ireland",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Female",
                                    "created": "2021-10-17T12:00:07.076Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Amazing Johnathan",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2021-10-17T12:00:50.753Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Foal Sanchez",
                                    "species": "Humanoid",
                                    "type": "CHUD Human Mix",
                                    "gender": "unknown",
                                    "created": "2021-10-17T12:08:38.935Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Cirque du Soleil Zumanity Member",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Female",
                                    "created": "2021-10-17T12:24:53.547Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Cirque du Soleil Zumanity Member",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2021-10-17T12:25:18.152Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Cirque du Soleil Zumanity Member",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Female",
                                    "created": "2021-10-17T12:25:53.904Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Cirque du Soleil Zumanity Member",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Female",
                                    "created": "2021-10-17T12:26:27.530Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Cirque du Soleil Zumanity Member",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Female",
                                    "created": "2021-10-17T12:27:42.669Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Bruce Chutback",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2021-10-17T13:35:30.793Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Space Cruiser",
                                    "species": "Robot",
                                    "type": "Artificial Intelligence",
                                    "gender": "Female",
                                    "created": "2021-10-17T14:09:39.783Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Coop",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2021-10-17T14:13:09.623Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Dwayne",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2021-10-17T14:14:04.450Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Franklin D. Roosevelt",
                                    "species": "Humanoid",
                                    "type": "Guinea Pig for the Polio Vaccine",
                                    "gender": "Male",
                                    "created": "2021-10-17T14:19:57.500Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "President's General",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2021-10-17T14:26:07.815Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Giant Assassin Hidden in the Statue of Liberty",
                                    "species": "Robot",
                                    "type": "",
                                    "gender": "Female",
                                    "created": "2021-10-17T14:59:32.923Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Turkey Morty",
                                    "species": "Animal",
                                    "type": "Turkey",
                                    "gender": "Male",
                                    "created": "2021-10-17T15:01:58.524Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Turkey Rick",
                                    "species": "Animal",
                                    "type": "Turkey",
                                    "gender": "Male",
                                    "created": "2021-10-17T15:02:38.081Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Turkey President Curtis",
                                    "species": "Animal",
                                    "type": "Turkey",
                                    "gender": "Male",
                                    "created": "2021-10-17T15:03:29.593Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Martínez",
                                    "species": "Animal",
                                    "type": "Turkey",
                                    "gender": "Male",
                                    "created": "2021-10-17T15:06:48.939Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Marvin",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2021-10-17T15:07:24.718Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Jackey",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2021-10-17T15:08:16.906Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Native Alien",
                                    "species": "Alien",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2021-10-17T15:09:22.123Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Pilgrim Alien",
                                    "species": "Alien",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2021-10-17T15:10:21.016Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "President Turkey",
                                    "species": "Humanoid",
                                    "type": "Turkey Human Mix",
                                    "gender": "Male",
                                    "created": "2021-10-17T15:11:48.815Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Mary-Lou",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Female",
                                    "created": "2021-10-17T15:26:42.828Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Big Fat rick",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2021-10-25T08:54:36.735Z",
                                    "status": "unknown"
                                },
                                {
                                    "name": "Hothead Rick",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2021-10-25T08:55:48.771Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Ricardo Montoya",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2021-10-25T08:56:41.727Z",
                                    "status": "unknown"
                                },
                                {
                                    "name": "Wrap-it-up Little Rick",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2021-10-25T08:57:20.725Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Yo-yo Rick",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2021-10-25T08:58:05.108Z",
                                    "status": "unknown"
                                },
                                {
                                    "name": "Voiceoverian",
                                    "species": "Alien",
                                    "type": "Parasite",
                                    "gender": "unknown",
                                    "created": "2021-10-25T08:59:23.442Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Voiceoverian",
                                    "species": "Alien",
                                    "type": "Parasite",
                                    "gender": "unknown",
                                    "created": "2021-10-25T08:59:52.011Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Gotron Pilot",
                                    "species": "Human",
                                    "type": "Anime",
                                    "gender": "Male",
                                    "created": "2021-10-25T09:00:59.768Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Gotron Pilot",
                                    "species": "Human",
                                    "type": "Anime",
                                    "gender": "Male",
                                    "created": "2021-10-25T09:02:55.146Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Gotron Pilot",
                                    "species": "Human",
                                    "type": "Anime",
                                    "gender": "Male",
                                    "created": "2021-10-25T09:04:17.165Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Rick's Garage",
                                    "species": "Robot",
                                    "type": "Artificial Intelligence",
                                    "gender": "Female",
                                    "created": "2021-10-25T09:18:48.188Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Birdperson & Tammy's Child",
                                    "species": "Humanoid",
                                    "type": "Bird-Person Human Mix",
                                    "gender": "Female",
                                    "created": "2021-10-25T09:27:05.325Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Mr. Cookie President",
                                    "species": "Alien",
                                    "type": "Cookie",
                                    "gender": "Male",
                                    "created": "2021-10-25T10:18:19.997Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Nick",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2021-10-25T10:19:06.159Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Harold (Garbage Goober)",
                                    "species": "Alien",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2021-10-25T10:20:33.373Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Harold's Wife",
                                    "species": "Alien",
                                    "type": "",
                                    "gender": "Female",
                                    "created": "2021-10-25T10:21:17.779Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Samansky",
                                    "species": "Alien",
                                    "type": "Normal Size Bug",
                                    "gender": "Male",
                                    "created": "2021-11-02T13:04:18.866Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Super Turkey",
                                    "species": "Humanoid",
                                    "type": "Turkey Human Mix",
                                    "gender": "Male",
                                    "created": "2021-11-02T13:11:52.372Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Crow Horse",
                                    "species": "Robot",
                                    "type": "Crow Horse",
                                    "gender": "unknown",
                                    "created": "2021-11-02T14:11:56.442Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Gotron",
                                    "species": "Robot",
                                    "type": "Ferret Robot",
                                    "gender": "Genderless",
                                    "created": "2021-11-02T17:15:24.788Z",
                                    "status": "unknown"
                                },
                                {
                                    "name": "Butter Robot",
                                    "species": "Robot",
                                    "type": "Passing Butter Robot",
                                    "gender": "Genderless",
                                    "created": "2021-11-02T17:24:37.458Z",
                                    "status": "Alive"
                                }
                            ]
                        }
                    },
                    {
                        "name": "Beth Smith",
                        "species": "Human",
                        "type": "",
                        "gender": "Female",
                        "created": "2017-11-04T19:22:43.665Z",
                        "status": "Alive",
                        "origin": {
                            "id": "20",
                            "name": "Earth (Replacement Dimension)",
                            "type": "Planet",
                            "dimension": "Replacement Dimension",
                            "residents": [
                                {
                                    "name": "Summer Smith",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Female",
                                    "created": "2017-11-04T19:09:56.428Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Beth Smith",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Female",
                                    "created": "2017-11-04T19:22:43.665Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Jerry Smith",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-11-04T19:26:56.301Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Agency Director",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-11-04T20:06:54.976Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Albert Einstein",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-11-04T20:20:20.965Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Alien Googah",
                                    "species": "Alien",
                                    "type": "",
                                    "gender": "unknown",
                                    "created": "2017-11-04T20:33:30.779Z",
                                    "status": "unknown"
                                },
                                {
                                    "name": "Amish Cyborg",
                                    "species": "Alien",
                                    "type": "Parasite",
                                    "gender": "Male",
                                    "created": "2017-11-04T21:12:45.235Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Baby Wizard",
                                    "species": "Alien",
                                    "type": "Parasite",
                                    "gender": "Male",
                                    "created": "2017-11-05T09:15:11.286Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Bearded Lady",
                                    "species": "Alien",
                                    "type": "Parasite",
                                    "gender": "Female",
                                    "created": "2017-11-05T09:18:04.184Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Blim Blam",
                                    "species": "Alien",
                                    "type": "Korblock",
                                    "gender": "Male",
                                    "created": "2017-11-05T11:21:43.756Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Brad",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-11-05T11:40:02.554Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Brad Anderson",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-11-05T11:41:38.964Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Chris",
                                    "species": "Alien",
                                    "type": "Organic gun",
                                    "gender": "unknown",
                                    "created": "2017-11-05T12:25:03.541Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Coach Feratu (Balik Alistane)",
                                    "species": "Mythological Creature",
                                    "type": "Vampire",
                                    "gender": "Male",
                                    "created": "2017-11-30T11:10:10.491Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Cousin Nicky",
                                    "species": "Alien",
                                    "type": "Parasite",
                                    "gender": "Male",
                                    "created": "2017-11-30T14:11:52.882Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Cynthia",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Female",
                                    "created": "2017-11-30T21:16:35.633Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Doofus Rick",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-01T12:29:27.984Z",
                                    "status": "unknown"
                                },
                                {
                                    "name": "Dr. Wong",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Female",
                                    "created": "2017-12-26T12:55:58.449Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Duck With Muscles",
                                    "species": "Alien",
                                    "type": "Parasite",
                                    "gender": "Male",
                                    "created": "2017-12-26T13:17:40.686Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Eric Stoltz Mask Morty",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-26T13:43:29.296Z",
                                    "status": "unknown"
                                },
                                {
                                    "name": "Ethan",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-26T16:01:50.939Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Father Bob",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-26T17:31:29.113Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Frankenstein's Monster",
                                    "species": "Alien",
                                    "type": "Parasite",
                                    "gender": "Male",
                                    "created": "2017-12-26T19:24:56.679Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Gene",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-27T18:14:57.885Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "General Nathan",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-27T18:22:18.387Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Ghost in a Jar",
                                    "species": "Alien",
                                    "type": "Parasite",
                                    "gender": "Genderless",
                                    "created": "2017-12-27T19:14:14.545Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Gobo",
                                    "species": "Alien",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-29T11:38:29.578Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Gordon Lunas",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-29T11:44:00.169Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Gwendolyn",
                                    "species": "Robot",
                                    "type": "Gazorpian reproduction robot",
                                    "gender": "Female",
                                    "created": "2017-12-29T12:31:50.388Z",
                                    "status": "unknown"
                                },
                                {
                                    "name": "Hamurai",
                                    "species": "Alien",
                                    "type": "Parasite",
                                    "gender": "Male",
                                    "created": "2017-12-29T15:32:05.287Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Invisi-trooper",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-29T17:06:28.325Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Izzy",
                                    "species": "Animal",
                                    "type": "Cat",
                                    "gender": "unknown",
                                    "created": "2017-12-29T17:07:59.024Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Jacqueline",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Female",
                                    "created": "2017-12-29T17:22:17.707Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Jaguar",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-29T17:25:38.138Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Jamey",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-29T17:30:20.654Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Jessica",
                                    "species": "Human",
                                    "type": "Time God",
                                    "gender": "Female",
                                    "created": "2017-12-29T18:36:27.225Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Jessica's Friend",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Female",
                                    "created": "2017-12-29T18:47:23.345Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Jim",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-29T18:49:48.953Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Joseph Eli Lipkip",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-29T18:56:15.622Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Katarina",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Female",
                                    "created": "2017-12-29T19:13:57.070Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Keara",
                                    "species": "Alien",
                                    "type": "Krootabulan",
                                    "gender": "Female",
                                    "created": "2017-12-29T19:26:06.900Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Lil B",
                                    "species": "Alien",
                                    "type": "Snail alien",
                                    "gender": "Male",
                                    "created": "2017-12-30T12:54:31.725Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Lucy",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Female",
                                    "created": "2017-12-30T14:01:23.319Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Mechanical Morty",
                                    "species": "Robot",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-30T14:32:17.158Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Mechanical Rick",
                                    "species": "Robot",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-30T14:33:16.920Z",
                                    "status": "unknown"
                                },
                                {
                                    "name": "Mechanical Summer",
                                    "species": "Robot",
                                    "type": "",
                                    "gender": "Female",
                                    "created": "2017-12-30T14:33:49.392Z",
                                    "status": "unknown"
                                },
                                {
                                    "name": "Mitch",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-30T16:08:38.157Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Morty Jr.",
                                    "species": "Humanoid",
                                    "type": "Human Gazorpian",
                                    "gender": "Male",
                                    "created": "2017-12-30T16:20:51.391Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Morty K-22",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-30T16:33:49.577Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Morty Smith",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-30T16:35:01.223Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Mr. Beauregard",
                                    "species": "Alien",
                                    "type": "Parasite",
                                    "gender": "Male",
                                    "created": "2017-12-30T17:28:28.409Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Mr. Benson",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-30T17:30:31.757Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Mr. Goldenfold",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-30T17:42:56.349Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Mr. Marklovitz",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-30T17:46:19.052Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Mr. Needful",
                                    "species": "Humanoid",
                                    "type": "The Devil",
                                    "gender": "Male",
                                    "created": "2017-12-30T17:54:06.996Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Mr. Poopybutthole",
                                    "species": "Poopybutthole",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-30T18:03:48.054Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Mrs. Lipkip",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Female",
                                    "created": "2017-12-30T18:05:59.999Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Mrs. Refrigerator",
                                    "species": "Alien",
                                    "type": "Parasite",
                                    "gender": "Female",
                                    "created": "2017-12-30T18:12:38.369Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Nancy",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Female",
                                    "created": "2017-12-31T12:46:54.095Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Orthodox Jew",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-31T13:19:29.825Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Pencilvester",
                                    "species": "Alien",
                                    "type": "Parasite",
                                    "gender": "Male",
                                    "created": "2017-12-31T13:33:48.488Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Photography Raptor",
                                    "species": "Alien",
                                    "type": "Parasite",
                                    "gender": "unknown",
                                    "created": "2017-12-31T13:40:32.312Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Pickle Rick",
                                    "species": "unknown",
                                    "type": "Pickle",
                                    "gender": "Male",
                                    "created": "2017-12-31T13:47:10.617Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Principal Vagina",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-31T14:09:09.071Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Rat Boss",
                                    "species": "Animal",
                                    "type": "Rat",
                                    "gender": "unknown",
                                    "created": "2017-12-31T14:17:21.782Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Reverse Giraffe",
                                    "species": "Alien",
                                    "type": "Parasite",
                                    "gender": "Male",
                                    "created": "2017-12-31T14:22:46.285Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Rick K-22",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-31T20:20:40.484Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Rick Sanchez",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-31T20:22:29.032Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Sleepy Gary",
                                    "species": "Alien",
                                    "type": "Parasite",
                                    "gender": "Male",
                                    "created": "2018-01-05T15:17:26.876Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Slippery Stair",
                                    "species": "Mythological Creature",
                                    "type": "Slug",
                                    "gender": "Male",
                                    "created": "2018-01-10T16:11:09.964Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Slow Mobius",
                                    "species": "Humanoid",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2018-01-10T16:13:26.380Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Stacy",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Female",
                                    "created": "2018-01-10T16:31:10.465Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Steve",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2018-01-10T16:39:34.837Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Taddy Mason",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2018-01-10T17:07:09.052Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Terry",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2018-01-10T17:37:51.767Z",
                                    "status": "unknown"
                                },
                                {
                                    "name": "President Curtis",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2018-01-10T17:43:37.411Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Tinkles",
                                    "species": "Alien",
                                    "type": "Parasite",
                                    "gender": "Female",
                                    "created": "2018-01-10T17:58:51.840Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Tiny Rick",
                                    "species": "Human",
                                    "type": "Clone",
                                    "gender": "Male",
                                    "created": "2018-01-10T18:00:35.848Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Toby Matthews",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2018-01-10T18:02:03.402Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Tommy's Clone",
                                    "species": "Human",
                                    "type": "Clone",
                                    "gender": "Male",
                                    "created": "2018-01-10T18:07:45.541Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Toxic Morty",
                                    "species": "Humanoid",
                                    "type": "Morty's toxic side",
                                    "gender": "Male",
                                    "created": "2018-01-10T18:18:05.422Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Toxic Rick",
                                    "species": "Humanoid",
                                    "type": "Rick's toxic side",
                                    "gender": "Male",
                                    "created": "2018-01-10T18:20:41.703Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Trandor",
                                    "species": "Alien",
                                    "type": "Krootabulan",
                                    "gender": "Male",
                                    "created": "2018-01-10T18:54:36.578Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Tricia Lange",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Female",
                                    "created": "2018-01-10T18:59:31.842Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Vampire Master",
                                    "species": "Mythological Creature",
                                    "type": "Vampire",
                                    "gender": "Male",
                                    "created": "2018-01-10T19:23:45.478Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Voltematron",
                                    "species": "Alien",
                                    "type": "Parasite",
                                    "gender": "unknown",
                                    "created": "2018-01-10T19:29:08.116Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Zick Zack",
                                    "species": "Alien",
                                    "type": "Floop Floopian",
                                    "gender": "Male",
                                    "created": "2018-01-10T20:00:05.681Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Uncle Steve",
                                    "species": "Alien",
                                    "type": "Parasite",
                                    "gender": "Male",
                                    "created": "2018-01-14T13:34:50.096Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Morty Jr's interviewer",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2018-04-15T17:43:56.832Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Guy from The Bachelor",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2018-04-15T17:45:38.589Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Trunkphobic suspenders guy",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2018-04-15T20:31:46.065Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Synthetic Laser Eels",
                                    "species": "Animal",
                                    "type": "Eel",
                                    "gender": "unknown",
                                    "created": "2018-04-16T21:08:47.956Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Pripudlian",
                                    "species": "Alien",
                                    "type": "Pripudlian",
                                    "gender": "unknown",
                                    "created": "2018-04-16T22:21:57.962Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Michael",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2018-05-01T11:51:10.604Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Michael's Lawyer",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2018-05-01T11:57:16.266Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Veterinary",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Female",
                                    "created": "2018-05-01T11:58:43.275Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Veterinary Nurse",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2018-05-01T11:59:15.544Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Simon",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2018-05-01T14:20:10.187Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Vampire Master's Assistant",
                                    "species": "Mythological Creature",
                                    "type": "Vampire",
                                    "gender": "Male",
                                    "created": "2018-05-01T15:20:15.582Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Morphizer-XE Customer Support",
                                    "species": "Alien",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2018-05-22T16:46:18.038Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Morphizer-XE Customer Support",
                                    "species": "Alien",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2018-05-22T16:46:37.603Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Morphizer-XE Customer Support",
                                    "species": "Alien",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2018-05-22T16:46:50.518Z",
                                    "status": "unknown"
                                },
                                {
                                    "name": "Little Voltron",
                                    "species": "Robot",
                                    "type": "",
                                    "gender": "Genderless",
                                    "created": "2018-05-22T17:07:21.833Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Varrix",
                                    "species": "Alien",
                                    "type": "",
                                    "gender": "unknown",
                                    "created": "2018-05-22T17:49:13.883Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Secretary of the Interior",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2018-05-22T17:51:07.373Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Hologram Rick",
                                    "species": "Humanoid",
                                    "type": "Hologram",
                                    "gender": "Male",
                                    "created": "2020-05-02T10:30:38.622Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Bully",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2020-05-02T12:22:11.339Z",
                                    "status": "unknown"
                                },
                                {
                                    "name": "Anchorman",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2020-05-02T12:23:38.655Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Anchorwoman",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Female",
                                    "created": "2020-05-02T12:24:07.452Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Morty’s Lawyer",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2020-05-02T12:25:59.290Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Judge",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Female",
                                    "created": "2020-05-02T12:27:08.223Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Public Opinion Judge",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Female",
                                    "created": "2020-05-02T12:28:05.671Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Wasp Rick",
                                    "species": "Animal",
                                    "type": "Wasp",
                                    "gender": "Male",
                                    "created": "2020-05-02T12:36:47.872Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Wasp Rick’s Clone",
                                    "species": "Animal",
                                    "type": "Wasp",
                                    "gender": "Male",
                                    "created": "2020-05-02T12:38:18.097Z",
                                    "status": "unknown"
                                },
                                {
                                    "name": "Boglin",
                                    "species": "unknown",
                                    "type": "Toy",
                                    "gender": "unknown",
                                    "created": "2020-05-02T12:50:15.005Z",
                                    "status": "unknown"
                                },
                                {
                                    "name": "Kirkland Brand Mr. Meeseeks",
                                    "species": "Humanoid",
                                    "type": "Meeseeks",
                                    "gender": "Male",
                                    "created": "2020-05-02T12:52:58.134Z",
                                    "status": "unknown"
                                },
                                {
                                    "name": "Danny Publitz",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2020-05-02T13:14:28.386Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Tony's Dad",
                                    "species": "Alien",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2020-05-02T13:52:06.880Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Jeff",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2020-05-02T13:54:21.374Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Josiah",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2020-05-02T13:54:48.651Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Maggie",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Female",
                                    "created": "2020-05-02T13:55:15.098Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Priest Witherspoon",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2020-05-02T13:55:45.767Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Richard",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2020-05-02T13:56:14.834Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Running Bird",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2020-05-02T13:56:45.926Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Secretary at Tony's",
                                    "species": "Alien",
                                    "type": "",
                                    "gender": "Female",
                                    "created": "2020-05-02T13:57:49.250Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Netflix Executive",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2020-05-07T11:19:57.540Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Balthromaw",
                                    "species": "Mythological Creature",
                                    "type": "Dragon",
                                    "gender": "Male",
                                    "created": "2020-05-07T11:32:16.357Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Talking Cat",
                                    "species": "Animal",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2020-05-07T11:33:37.456Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Chachi",
                                    "species": "Alien",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2020-05-07T12:01:38.426Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Snake Resistance Robot",
                                    "species": "Robot",
                                    "type": "Human-Snake hybrid",
                                    "gender": "Genderless",
                                    "created": "2020-05-07T12:15:50.438Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Bar Customer",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2020-05-07T12:37:52.695Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Bartender",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Female",
                                    "created": "2020-05-07T12:38:23.983Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "PC Basketball Player",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2020-05-07T12:42:24.982Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Pet Shop Employee",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2020-05-07T12:46:51.424Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "High Pilot",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2020-05-07T12:55:35.833Z",
                                    "status": "unknown"
                                },
                                {
                                    "name": "High Pilot",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2020-05-07T12:56:10.200Z",
                                    "status": "unknown"
                                },
                                {
                                    "name": "Phoenixperson",
                                    "species": "Alien",
                                    "type": "Cyborg",
                                    "gender": "Male",
                                    "created": "2020-08-05T12:43:16.671Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Defiance Beth",
                                    "species": "Human",
                                    "type": "Clone",
                                    "gender": "Female",
                                    "created": "2020-08-13T12:48:55.885Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Mr. Nimbus",
                                    "species": "Mythological Creature",
                                    "type": "Sexy Aquaman",
                                    "gender": "Male",
                                    "created": "2021-10-16T11:55:58.042Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Adam",
                                    "species": "Humanoid",
                                    "type": "Narnian",
                                    "gender": "Male",
                                    "created": "2021-10-16T13:18:13.644Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Mr. Nimbus Secretary",
                                    "species": "Animal",
                                    "type": "Starfish",
                                    "gender": "Female",
                                    "created": "2021-10-16T13:45:26.155Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Mr. Nimbus' Squid",
                                    "species": "Animal",
                                    "type": "Squid",
                                    "gender": "Male",
                                    "created": "2021-10-16T13:51:28.877Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Scarecrow Rick",
                                    "species": "Robot",
                                    "type": "Decoy",
                                    "gender": "Male",
                                    "created": "2021-10-16T15:18:02.052Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Scarecrow Summer",
                                    "species": "Robot",
                                    "type": "Decoy",
                                    "gender": "Female",
                                    "created": "2021-10-16T15:19:13.080Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Scarecrow Jerry",
                                    "species": "Robot",
                                    "type": "Decoy",
                                    "gender": "Male",
                                    "created": "2021-10-16T15:21:40.918Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Scarecrow Morty",
                                    "species": "Robot",
                                    "type": "Decoy",
                                    "gender": "Male",
                                    "created": "2021-10-16T15:22:35.204Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Scarecrow Beth",
                                    "species": "Robot",
                                    "type": "Decoy",
                                    "gender": "Female",
                                    "created": "2021-10-16T15:23:21.971Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Glockenspiel Jerry",
                                    "species": "Robot",
                                    "type": "Decoy",
                                    "gender": "Male",
                                    "created": "2021-10-16T15:32:27.166Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Glockenspiel Beth",
                                    "species": "Robot",
                                    "type": "Decoy",
                                    "gender": "Female",
                                    "created": "2021-10-16T15:34:41.082Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Glockenspiel Rick",
                                    "species": "Robot",
                                    "type": "Decoy",
                                    "gender": "Male",
                                    "created": "2021-10-16T15:36:04.423Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Glockenspiel Summer",
                                    "species": "Robot",
                                    "type": "Decoy",
                                    "gender": "Female",
                                    "created": "2021-10-16T15:36:59.730Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Glockenspiel Morty",
                                    "species": "Robot",
                                    "type": "Decoy",
                                    "gender": "Male",
                                    "created": "2021-10-16T15:37:40.381Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Wicker Beth",
                                    "species": "Robot",
                                    "type": "Decoy",
                                    "gender": "Female",
                                    "created": "2021-10-16T15:40:01.248Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Wicker Rick",
                                    "species": "Robot",
                                    "type": "Decoy",
                                    "gender": "Male",
                                    "created": "2021-10-16T15:40:51.046Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Wicker Morty",
                                    "species": "Robot",
                                    "type": "Decoy",
                                    "gender": "Male",
                                    "created": "2021-10-16T15:41:28.941Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Wicker Summer",
                                    "species": "Robot",
                                    "type": "Decoy",
                                    "gender": "Female",
                                    "created": "2021-10-16T15:42:51.860Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Metal Rick",
                                    "species": "Robot",
                                    "type": "Decoy",
                                    "gender": "Male",
                                    "created": "2021-10-16T15:43:50.568Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Gun Brain Rick",
                                    "species": "Robot",
                                    "type": "Decoy",
                                    "gender": "Male",
                                    "created": "2021-10-16T15:46:56.288Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Mr. Always Wants to be Hunted",
                                    "species": "Poopybutthole",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2021-10-16T15:51:02.924Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Squid Costume Beth",
                                    "species": "Robot",
                                    "type": "Decoy",
                                    "gender": "Female",
                                    "created": "2021-10-16T15:55:49.506Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Squid Costume Jerry",
                                    "species": "Robot",
                                    "type": "Decoy",
                                    "gender": "Male",
                                    "created": "2021-10-16T16:00:00.400Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Squid Costume Morty",
                                    "species": "Robot",
                                    "type": "Decoy",
                                    "gender": "Male",
                                    "created": "2021-10-16T16:01:02.238Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Squid Costume Rick",
                                    "species": "Robot",
                                    "type": "Decoy",
                                    "gender": "Male",
                                    "created": "2021-10-16T16:01:52.437Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Squid Costume Summer",
                                    "species": "Robot",
                                    "type": "Decoy",
                                    "gender": "Female",
                                    "created": "2021-10-16T16:03:02.153Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Steve",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2021-10-16T16:06:00.878Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Too Cute to Murder Beth",
                                    "species": "Robot",
                                    "type": "Decoy",
                                    "gender": "Female",
                                    "created": "2021-10-17T09:40:13.581Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Too Cute to Murder Rick",
                                    "species": "Robot",
                                    "type": "Decoy",
                                    "gender": "Male",
                                    "created": "2021-10-17T09:40:51.620Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Too Cute to Murder Jerry",
                                    "species": "Robot",
                                    "type": "Decoy",
                                    "gender": "Male",
                                    "created": "2021-10-17T09:41:30.782Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Too Cute to Murder Morty",
                                    "species": "Robot",
                                    "type": "Decoy",
                                    "gender": "Male",
                                    "created": "2021-10-17T09:42:15.208Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Too Cute to Murder Summer",
                                    "species": "Robot",
                                    "type": "Decoy",
                                    "gender": "Female",
                                    "created": "2021-10-17T09:42:51.073Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Planetina",
                                    "species": "Humanoid",
                                    "type": "Summon",
                                    "gender": "Female",
                                    "created": "2021-10-17T09:50:18.307Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Diesel Weasel",
                                    "species": "Animal",
                                    "type": "Weasel",
                                    "gender": "Male",
                                    "created": "2021-10-17T09:55:17.683Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Eddie",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2021-10-17T09:57:07.971Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Xing Ho",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Female",
                                    "created": "2021-10-17T09:57:46.574Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Air Tina-Teer",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Female",
                                    "created": "2021-10-17T09:58:49.388Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Water Tina-Teer",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2021-10-17T09:59:26.786Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Planetina Buyer",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2021-10-17T10:00:06.914Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Tony Galopagus",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2021-10-17T10:01:10.143Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Sticky",
                                    "species": "unknown",
                                    "type": "Super Sperm Monster",
                                    "gender": "Male",
                                    "created": "2021-10-17T10:09:46.047Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Professor Shabooboo",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2021-10-17T10:10:44.560Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Sperm Queen",
                                    "species": "unknown",
                                    "type": "Super Sperm Monster",
                                    "gender": "Female",
                                    "created": "2021-10-17T10:12:05.246Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "CHUD King",
                                    "species": "Animal",
                                    "type": "CHUD",
                                    "gender": "Male",
                                    "created": "2021-10-17T10:32:39.601Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Princess Ponietta",
                                    "species": "Animal",
                                    "type": "CHUD",
                                    "gender": "Female",
                                    "created": "2021-10-17T10:35:15.825Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Blazen",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2021-10-17T11:59:00.689Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Kathy Ireland",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Female",
                                    "created": "2021-10-17T12:00:07.076Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Amazing Johnathan",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2021-10-17T12:00:50.753Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Foal Sanchez",
                                    "species": "Humanoid",
                                    "type": "CHUD Human Mix",
                                    "gender": "unknown",
                                    "created": "2021-10-17T12:08:38.935Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Cirque du Soleil Zumanity Member",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Female",
                                    "created": "2021-10-17T12:24:53.547Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Cirque du Soleil Zumanity Member",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2021-10-17T12:25:18.152Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Cirque du Soleil Zumanity Member",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Female",
                                    "created": "2021-10-17T12:25:53.904Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Cirque du Soleil Zumanity Member",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Female",
                                    "created": "2021-10-17T12:26:27.530Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Cirque du Soleil Zumanity Member",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Female",
                                    "created": "2021-10-17T12:27:42.669Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Bruce Chutback",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2021-10-17T13:35:30.793Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Space Cruiser",
                                    "species": "Robot",
                                    "type": "Artificial Intelligence",
                                    "gender": "Female",
                                    "created": "2021-10-17T14:09:39.783Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Coop",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2021-10-17T14:13:09.623Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Dwayne",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2021-10-17T14:14:04.450Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Franklin D. Roosevelt",
                                    "species": "Humanoid",
                                    "type": "Guinea Pig for the Polio Vaccine",
                                    "gender": "Male",
                                    "created": "2021-10-17T14:19:57.500Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "President's General",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2021-10-17T14:26:07.815Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Giant Assassin Hidden in the Statue of Liberty",
                                    "species": "Robot",
                                    "type": "",
                                    "gender": "Female",
                                    "created": "2021-10-17T14:59:32.923Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Turkey Morty",
                                    "species": "Animal",
                                    "type": "Turkey",
                                    "gender": "Male",
                                    "created": "2021-10-17T15:01:58.524Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Turkey Rick",
                                    "species": "Animal",
                                    "type": "Turkey",
                                    "gender": "Male",
                                    "created": "2021-10-17T15:02:38.081Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Turkey President Curtis",
                                    "species": "Animal",
                                    "type": "Turkey",
                                    "gender": "Male",
                                    "created": "2021-10-17T15:03:29.593Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Martínez",
                                    "species": "Animal",
                                    "type": "Turkey",
                                    "gender": "Male",
                                    "created": "2021-10-17T15:06:48.939Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Marvin",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2021-10-17T15:07:24.718Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Jackey",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2021-10-17T15:08:16.906Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Native Alien",
                                    "species": "Alien",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2021-10-17T15:09:22.123Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Pilgrim Alien",
                                    "species": "Alien",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2021-10-17T15:10:21.016Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "President Turkey",
                                    "species": "Humanoid",
                                    "type": "Turkey Human Mix",
                                    "gender": "Male",
                                    "created": "2021-10-17T15:11:48.815Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Mary-Lou",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Female",
                                    "created": "2021-10-17T15:26:42.828Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Big Fat rick",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2021-10-25T08:54:36.735Z",
                                    "status": "unknown"
                                },
                                {
                                    "name": "Hothead Rick",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2021-10-25T08:55:48.771Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Ricardo Montoya",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2021-10-25T08:56:41.727Z",
                                    "status": "unknown"
                                },
                                {
                                    "name": "Wrap-it-up Little Rick",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2021-10-25T08:57:20.725Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Yo-yo Rick",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2021-10-25T08:58:05.108Z",
                                    "status": "unknown"
                                },
                                {
                                    "name": "Voiceoverian",
                                    "species": "Alien",
                                    "type": "Parasite",
                                    "gender": "unknown",
                                    "created": "2021-10-25T08:59:23.442Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Voiceoverian",
                                    "species": "Alien",
                                    "type": "Parasite",
                                    "gender": "unknown",
                                    "created": "2021-10-25T08:59:52.011Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Gotron Pilot",
                                    "species": "Human",
                                    "type": "Anime",
                                    "gender": "Male",
                                    "created": "2021-10-25T09:00:59.768Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Gotron Pilot",
                                    "species": "Human",
                                    "type": "Anime",
                                    "gender": "Male",
                                    "created": "2021-10-25T09:02:55.146Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Gotron Pilot",
                                    "species": "Human",
                                    "type": "Anime",
                                    "gender": "Male",
                                    "created": "2021-10-25T09:04:17.165Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Rick's Garage",
                                    "species": "Robot",
                                    "type": "Artificial Intelligence",
                                    "gender": "Female",
                                    "created": "2021-10-25T09:18:48.188Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Birdperson & Tammy's Child",
                                    "species": "Humanoid",
                                    "type": "Bird-Person Human Mix",
                                    "gender": "Female",
                                    "created": "2021-10-25T09:27:05.325Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Mr. Cookie President",
                                    "species": "Alien",
                                    "type": "Cookie",
                                    "gender": "Male",
                                    "created": "2021-10-25T10:18:19.997Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Nick",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2021-10-25T10:19:06.159Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Harold (Garbage Goober)",
                                    "species": "Alien",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2021-10-25T10:20:33.373Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Harold's Wife",
                                    "species": "Alien",
                                    "type": "",
                                    "gender": "Female",
                                    "created": "2021-10-25T10:21:17.779Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Samansky",
                                    "species": "Alien",
                                    "type": "Normal Size Bug",
                                    "gender": "Male",
                                    "created": "2021-11-02T13:04:18.866Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Super Turkey",
                                    "species": "Humanoid",
                                    "type": "Turkey Human Mix",
                                    "gender": "Male",
                                    "created": "2021-11-02T13:11:52.372Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Crow Horse",
                                    "species": "Robot",
                                    "type": "Crow Horse",
                                    "gender": "unknown",
                                    "created": "2021-11-02T14:11:56.442Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Gotron",
                                    "species": "Robot",
                                    "type": "Ferret Robot",
                                    "gender": "Genderless",
                                    "created": "2021-11-02T17:15:24.788Z",
                                    "status": "unknown"
                                },
                                {
                                    "name": "Butter Robot",
                                    "species": "Robot",
                                    "type": "Passing Butter Robot",
                                    "gender": "Genderless",
                                    "created": "2021-11-02T17:24:37.458Z",
                                    "status": "Alive"
                                }
                            ]
                        }
                    },
                    {
                        "name": "Jerry Smith",
                        "species": "Human",
                        "type": "",
                        "gender": "Male",
                        "created": "2017-11-04T19:26:56.301Z",
                        "status": "Alive",
                        "origin": {
                            "id": "20",
                            "name": "Earth (Replacement Dimension)",
                            "type": "Planet",
                            "dimension": "Replacement Dimension",
                            "residents": [
                                {
                                    "name": "Summer Smith",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Female",
                                    "created": "2017-11-04T19:09:56.428Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Beth Smith",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Female",
                                    "created": "2017-11-04T19:22:43.665Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Jerry Smith",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-11-04T19:26:56.301Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Agency Director",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-11-04T20:06:54.976Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Albert Einstein",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-11-04T20:20:20.965Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Alien Googah",
                                    "species": "Alien",
                                    "type": "",
                                    "gender": "unknown",
                                    "created": "2017-11-04T20:33:30.779Z",
                                    "status": "unknown"
                                },
                                {
                                    "name": "Amish Cyborg",
                                    "species": "Alien",
                                    "type": "Parasite",
                                    "gender": "Male",
                                    "created": "2017-11-04T21:12:45.235Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Baby Wizard",
                                    "species": "Alien",
                                    "type": "Parasite",
                                    "gender": "Male",
                                    "created": "2017-11-05T09:15:11.286Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Bearded Lady",
                                    "species": "Alien",
                                    "type": "Parasite",
                                    "gender": "Female",
                                    "created": "2017-11-05T09:18:04.184Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Blim Blam",
                                    "species": "Alien",
                                    "type": "Korblock",
                                    "gender": "Male",
                                    "created": "2017-11-05T11:21:43.756Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Brad",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-11-05T11:40:02.554Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Brad Anderson",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-11-05T11:41:38.964Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Chris",
                                    "species": "Alien",
                                    "type": "Organic gun",
                                    "gender": "unknown",
                                    "created": "2017-11-05T12:25:03.541Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Coach Feratu (Balik Alistane)",
                                    "species": "Mythological Creature",
                                    "type": "Vampire",
                                    "gender": "Male",
                                    "created": "2017-11-30T11:10:10.491Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Cousin Nicky",
                                    "species": "Alien",
                                    "type": "Parasite",
                                    "gender": "Male",
                                    "created": "2017-11-30T14:11:52.882Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Cynthia",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Female",
                                    "created": "2017-11-30T21:16:35.633Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Doofus Rick",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-01T12:29:27.984Z",
                                    "status": "unknown"
                                },
                                {
                                    "name": "Dr. Wong",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Female",
                                    "created": "2017-12-26T12:55:58.449Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Duck With Muscles",
                                    "species": "Alien",
                                    "type": "Parasite",
                                    "gender": "Male",
                                    "created": "2017-12-26T13:17:40.686Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Eric Stoltz Mask Morty",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-26T13:43:29.296Z",
                                    "status": "unknown"
                                },
                                {
                                    "name": "Ethan",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-26T16:01:50.939Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Father Bob",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-26T17:31:29.113Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Frankenstein's Monster",
                                    "species": "Alien",
                                    "type": "Parasite",
                                    "gender": "Male",
                                    "created": "2017-12-26T19:24:56.679Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Gene",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-27T18:14:57.885Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "General Nathan",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-27T18:22:18.387Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Ghost in a Jar",
                                    "species": "Alien",
                                    "type": "Parasite",
                                    "gender": "Genderless",
                                    "created": "2017-12-27T19:14:14.545Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Gobo",
                                    "species": "Alien",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-29T11:38:29.578Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Gordon Lunas",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-29T11:44:00.169Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Gwendolyn",
                                    "species": "Robot",
                                    "type": "Gazorpian reproduction robot",
                                    "gender": "Female",
                                    "created": "2017-12-29T12:31:50.388Z",
                                    "status": "unknown"
                                },
                                {
                                    "name": "Hamurai",
                                    "species": "Alien",
                                    "type": "Parasite",
                                    "gender": "Male",
                                    "created": "2017-12-29T15:32:05.287Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Invisi-trooper",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-29T17:06:28.325Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Izzy",
                                    "species": "Animal",
                                    "type": "Cat",
                                    "gender": "unknown",
                                    "created": "2017-12-29T17:07:59.024Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Jacqueline",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Female",
                                    "created": "2017-12-29T17:22:17.707Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Jaguar",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-29T17:25:38.138Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Jamey",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-29T17:30:20.654Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Jessica",
                                    "species": "Human",
                                    "type": "Time God",
                                    "gender": "Female",
                                    "created": "2017-12-29T18:36:27.225Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Jessica's Friend",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Female",
                                    "created": "2017-12-29T18:47:23.345Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Jim",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-29T18:49:48.953Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Joseph Eli Lipkip",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-29T18:56:15.622Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Katarina",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Female",
                                    "created": "2017-12-29T19:13:57.070Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Keara",
                                    "species": "Alien",
                                    "type": "Krootabulan",
                                    "gender": "Female",
                                    "created": "2017-12-29T19:26:06.900Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Lil B",
                                    "species": "Alien",
                                    "type": "Snail alien",
                                    "gender": "Male",
                                    "created": "2017-12-30T12:54:31.725Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Lucy",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Female",
                                    "created": "2017-12-30T14:01:23.319Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Mechanical Morty",
                                    "species": "Robot",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-30T14:32:17.158Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Mechanical Rick",
                                    "species": "Robot",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-30T14:33:16.920Z",
                                    "status": "unknown"
                                },
                                {
                                    "name": "Mechanical Summer",
                                    "species": "Robot",
                                    "type": "",
                                    "gender": "Female",
                                    "created": "2017-12-30T14:33:49.392Z",
                                    "status": "unknown"
                                },
                                {
                                    "name": "Mitch",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-30T16:08:38.157Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Morty Jr.",
                                    "species": "Humanoid",
                                    "type": "Human Gazorpian",
                                    "gender": "Male",
                                    "created": "2017-12-30T16:20:51.391Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Morty K-22",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-30T16:33:49.577Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Morty Smith",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-30T16:35:01.223Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Mr. Beauregard",
                                    "species": "Alien",
                                    "type": "Parasite",
                                    "gender": "Male",
                                    "created": "2017-12-30T17:28:28.409Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Mr. Benson",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-30T17:30:31.757Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Mr. Goldenfold",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-30T17:42:56.349Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Mr. Marklovitz",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-30T17:46:19.052Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Mr. Needful",
                                    "species": "Humanoid",
                                    "type": "The Devil",
                                    "gender": "Male",
                                    "created": "2017-12-30T17:54:06.996Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Mr. Poopybutthole",
                                    "species": "Poopybutthole",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-30T18:03:48.054Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Mrs. Lipkip",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Female",
                                    "created": "2017-12-30T18:05:59.999Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Mrs. Refrigerator",
                                    "species": "Alien",
                                    "type": "Parasite",
                                    "gender": "Female",
                                    "created": "2017-12-30T18:12:38.369Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Nancy",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Female",
                                    "created": "2017-12-31T12:46:54.095Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Orthodox Jew",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-31T13:19:29.825Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Pencilvester",
                                    "species": "Alien",
                                    "type": "Parasite",
                                    "gender": "Male",
                                    "created": "2017-12-31T13:33:48.488Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Photography Raptor",
                                    "species": "Alien",
                                    "type": "Parasite",
                                    "gender": "unknown",
                                    "created": "2017-12-31T13:40:32.312Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Pickle Rick",
                                    "species": "unknown",
                                    "type": "Pickle",
                                    "gender": "Male",
                                    "created": "2017-12-31T13:47:10.617Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Principal Vagina",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-31T14:09:09.071Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Rat Boss",
                                    "species": "Animal",
                                    "type": "Rat",
                                    "gender": "unknown",
                                    "created": "2017-12-31T14:17:21.782Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Reverse Giraffe",
                                    "species": "Alien",
                                    "type": "Parasite",
                                    "gender": "Male",
                                    "created": "2017-12-31T14:22:46.285Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Rick K-22",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-31T20:20:40.484Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Rick Sanchez",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-31T20:22:29.032Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Sleepy Gary",
                                    "species": "Alien",
                                    "type": "Parasite",
                                    "gender": "Male",
                                    "created": "2018-01-05T15:17:26.876Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Slippery Stair",
                                    "species": "Mythological Creature",
                                    "type": "Slug",
                                    "gender": "Male",
                                    "created": "2018-01-10T16:11:09.964Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Slow Mobius",
                                    "species": "Humanoid",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2018-01-10T16:13:26.380Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Stacy",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Female",
                                    "created": "2018-01-10T16:31:10.465Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Steve",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2018-01-10T16:39:34.837Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Taddy Mason",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2018-01-10T17:07:09.052Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Terry",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2018-01-10T17:37:51.767Z",
                                    "status": "unknown"
                                },
                                {
                                    "name": "President Curtis",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2018-01-10T17:43:37.411Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Tinkles",
                                    "species": "Alien",
                                    "type": "Parasite",
                                    "gender": "Female",
                                    "created": "2018-01-10T17:58:51.840Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Tiny Rick",
                                    "species": "Human",
                                    "type": "Clone",
                                    "gender": "Male",
                                    "created": "2018-01-10T18:00:35.848Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Toby Matthews",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2018-01-10T18:02:03.402Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Tommy's Clone",
                                    "species": "Human",
                                    "type": "Clone",
                                    "gender": "Male",
                                    "created": "2018-01-10T18:07:45.541Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Toxic Morty",
                                    "species": "Humanoid",
                                    "type": "Morty's toxic side",
                                    "gender": "Male",
                                    "created": "2018-01-10T18:18:05.422Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Toxic Rick",
                                    "species": "Humanoid",
                                    "type": "Rick's toxic side",
                                    "gender": "Male",
                                    "created": "2018-01-10T18:20:41.703Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Trandor",
                                    "species": "Alien",
                                    "type": "Krootabulan",
                                    "gender": "Male",
                                    "created": "2018-01-10T18:54:36.578Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Tricia Lange",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Female",
                                    "created": "2018-01-10T18:59:31.842Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Vampire Master",
                                    "species": "Mythological Creature",
                                    "type": "Vampire",
                                    "gender": "Male",
                                    "created": "2018-01-10T19:23:45.478Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Voltematron",
                                    "species": "Alien",
                                    "type": "Parasite",
                                    "gender": "unknown",
                                    "created": "2018-01-10T19:29:08.116Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Zick Zack",
                                    "species": "Alien",
                                    "type": "Floop Floopian",
                                    "gender": "Male",
                                    "created": "2018-01-10T20:00:05.681Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Uncle Steve",
                                    "species": "Alien",
                                    "type": "Parasite",
                                    "gender": "Male",
                                    "created": "2018-01-14T13:34:50.096Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Morty Jr's interviewer",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2018-04-15T17:43:56.832Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Guy from The Bachelor",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2018-04-15T17:45:38.589Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Trunkphobic suspenders guy",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2018-04-15T20:31:46.065Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Synthetic Laser Eels",
                                    "species": "Animal",
                                    "type": "Eel",
                                    "gender": "unknown",
                                    "created": "2018-04-16T21:08:47.956Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Pripudlian",
                                    "species": "Alien",
                                    "type": "Pripudlian",
                                    "gender": "unknown",
                                    "created": "2018-04-16T22:21:57.962Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Michael",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2018-05-01T11:51:10.604Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Michael's Lawyer",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2018-05-01T11:57:16.266Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Veterinary",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Female",
                                    "created": "2018-05-01T11:58:43.275Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Veterinary Nurse",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2018-05-01T11:59:15.544Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Simon",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2018-05-01T14:20:10.187Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Vampire Master's Assistant",
                                    "species": "Mythological Creature",
                                    "type": "Vampire",
                                    "gender": "Male",
                                    "created": "2018-05-01T15:20:15.582Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Morphizer-XE Customer Support",
                                    "species": "Alien",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2018-05-22T16:46:18.038Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Morphizer-XE Customer Support",
                                    "species": "Alien",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2018-05-22T16:46:37.603Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Morphizer-XE Customer Support",
                                    "species": "Alien",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2018-05-22T16:46:50.518Z",
                                    "status": "unknown"
                                },
                                {
                                    "name": "Little Voltron",
                                    "species": "Robot",
                                    "type": "",
                                    "gender": "Genderless",
                                    "created": "2018-05-22T17:07:21.833Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Varrix",
                                    "species": "Alien",
                                    "type": "",
                                    "gender": "unknown",
                                    "created": "2018-05-22T17:49:13.883Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Secretary of the Interior",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2018-05-22T17:51:07.373Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Hologram Rick",
                                    "species": "Humanoid",
                                    "type": "Hologram",
                                    "gender": "Male",
                                    "created": "2020-05-02T10:30:38.622Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Bully",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2020-05-02T12:22:11.339Z",
                                    "status": "unknown"
                                },
                                {
                                    "name": "Anchorman",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2020-05-02T12:23:38.655Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Anchorwoman",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Female",
                                    "created": "2020-05-02T12:24:07.452Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Morty’s Lawyer",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2020-05-02T12:25:59.290Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Judge",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Female",
                                    "created": "2020-05-02T12:27:08.223Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Public Opinion Judge",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Female",
                                    "created": "2020-05-02T12:28:05.671Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Wasp Rick",
                                    "species": "Animal",
                                    "type": "Wasp",
                                    "gender": "Male",
                                    "created": "2020-05-02T12:36:47.872Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Wasp Rick’s Clone",
                                    "species": "Animal",
                                    "type": "Wasp",
                                    "gender": "Male",
                                    "created": "2020-05-02T12:38:18.097Z",
                                    "status": "unknown"
                                },
                                {
                                    "name": "Boglin",
                                    "species": "unknown",
                                    "type": "Toy",
                                    "gender": "unknown",
                                    "created": "2020-05-02T12:50:15.005Z",
                                    "status": "unknown"
                                },
                                {
                                    "name": "Kirkland Brand Mr. Meeseeks",
                                    "species": "Humanoid",
                                    "type": "Meeseeks",
                                    "gender": "Male",
                                    "created": "2020-05-02T12:52:58.134Z",
                                    "status": "unknown"
                                },
                                {
                                    "name": "Danny Publitz",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2020-05-02T13:14:28.386Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Tony's Dad",
                                    "species": "Alien",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2020-05-02T13:52:06.880Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Jeff",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2020-05-02T13:54:21.374Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Josiah",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2020-05-02T13:54:48.651Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Maggie",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Female",
                                    "created": "2020-05-02T13:55:15.098Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Priest Witherspoon",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2020-05-02T13:55:45.767Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Richard",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2020-05-02T13:56:14.834Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Running Bird",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2020-05-02T13:56:45.926Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Secretary at Tony's",
                                    "species": "Alien",
                                    "type": "",
                                    "gender": "Female",
                                    "created": "2020-05-02T13:57:49.250Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Netflix Executive",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2020-05-07T11:19:57.540Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Balthromaw",
                                    "species": "Mythological Creature",
                                    "type": "Dragon",
                                    "gender": "Male",
                                    "created": "2020-05-07T11:32:16.357Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Talking Cat",
                                    "species": "Animal",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2020-05-07T11:33:37.456Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Chachi",
                                    "species": "Alien",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2020-05-07T12:01:38.426Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Snake Resistance Robot",
                                    "species": "Robot",
                                    "type": "Human-Snake hybrid",
                                    "gender": "Genderless",
                                    "created": "2020-05-07T12:15:50.438Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Bar Customer",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2020-05-07T12:37:52.695Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Bartender",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Female",
                                    "created": "2020-05-07T12:38:23.983Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "PC Basketball Player",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2020-05-07T12:42:24.982Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Pet Shop Employee",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2020-05-07T12:46:51.424Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "High Pilot",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2020-05-07T12:55:35.833Z",
                                    "status": "unknown"
                                },
                                {
                                    "name": "High Pilot",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2020-05-07T12:56:10.200Z",
                                    "status": "unknown"
                                },
                                {
                                    "name": "Phoenixperson",
                                    "species": "Alien",
                                    "type": "Cyborg",
                                    "gender": "Male",
                                    "created": "2020-08-05T12:43:16.671Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Defiance Beth",
                                    "species": "Human",
                                    "type": "Clone",
                                    "gender": "Female",
                                    "created": "2020-08-13T12:48:55.885Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Mr. Nimbus",
                                    "species": "Mythological Creature",
                                    "type": "Sexy Aquaman",
                                    "gender": "Male",
                                    "created": "2021-10-16T11:55:58.042Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Adam",
                                    "species": "Humanoid",
                                    "type": "Narnian",
                                    "gender": "Male",
                                    "created": "2021-10-16T13:18:13.644Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Mr. Nimbus Secretary",
                                    "species": "Animal",
                                    "type": "Starfish",
                                    "gender": "Female",
                                    "created": "2021-10-16T13:45:26.155Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Mr. Nimbus' Squid",
                                    "species": "Animal",
                                    "type": "Squid",
                                    "gender": "Male",
                                    "created": "2021-10-16T13:51:28.877Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Scarecrow Rick",
                                    "species": "Robot",
                                    "type": "Decoy",
                                    "gender": "Male",
                                    "created": "2021-10-16T15:18:02.052Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Scarecrow Summer",
                                    "species": "Robot",
                                    "type": "Decoy",
                                    "gender": "Female",
                                    "created": "2021-10-16T15:19:13.080Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Scarecrow Jerry",
                                    "species": "Robot",
                                    "type": "Decoy",
                                    "gender": "Male",
                                    "created": "2021-10-16T15:21:40.918Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Scarecrow Morty",
                                    "species": "Robot",
                                    "type": "Decoy",
                                    "gender": "Male",
                                    "created": "2021-10-16T15:22:35.204Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Scarecrow Beth",
                                    "species": "Robot",
                                    "type": "Decoy",
                                    "gender": "Female",
                                    "created": "2021-10-16T15:23:21.971Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Glockenspiel Jerry",
                                    "species": "Robot",
                                    "type": "Decoy",
                                    "gender": "Male",
                                    "created": "2021-10-16T15:32:27.166Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Glockenspiel Beth",
                                    "species": "Robot",
                                    "type": "Decoy",
                                    "gender": "Female",
                                    "created": "2021-10-16T15:34:41.082Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Glockenspiel Rick",
                                    "species": "Robot",
                                    "type": "Decoy",
                                    "gender": "Male",
                                    "created": "2021-10-16T15:36:04.423Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Glockenspiel Summer",
                                    "species": "Robot",
                                    "type": "Decoy",
                                    "gender": "Female",
                                    "created": "2021-10-16T15:36:59.730Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Glockenspiel Morty",
                                    "species": "Robot",
                                    "type": "Decoy",
                                    "gender": "Male",
                                    "created": "2021-10-16T15:37:40.381Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Wicker Beth",
                                    "species": "Robot",
                                    "type": "Decoy",
                                    "gender": "Female",
                                    "created": "2021-10-16T15:40:01.248Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Wicker Rick",
                                    "species": "Robot",
                                    "type": "Decoy",
                                    "gender": "Male",
                                    "created": "2021-10-16T15:40:51.046Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Wicker Morty",
                                    "species": "Robot",
                                    "type": "Decoy",
                                    "gender": "Male",
                                    "created": "2021-10-16T15:41:28.941Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Wicker Summer",
                                    "species": "Robot",
                                    "type": "Decoy",
                                    "gender": "Female",
                                    "created": "2021-10-16T15:42:51.860Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Metal Rick",
                                    "species": "Robot",
                                    "type": "Decoy",
                                    "gender": "Male",
                                    "created": "2021-10-16T15:43:50.568Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Gun Brain Rick",
                                    "species": "Robot",
                                    "type": "Decoy",
                                    "gender": "Male",
                                    "created": "2021-10-16T15:46:56.288Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Mr. Always Wants to be Hunted",
                                    "species": "Poopybutthole",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2021-10-16T15:51:02.924Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Squid Costume Beth",
                                    "species": "Robot",
                                    "type": "Decoy",
                                    "gender": "Female",
                                    "created": "2021-10-16T15:55:49.506Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Squid Costume Jerry",
                                    "species": "Robot",
                                    "type": "Decoy",
                                    "gender": "Male",
                                    "created": "2021-10-16T16:00:00.400Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Squid Costume Morty",
                                    "species": "Robot",
                                    "type": "Decoy",
                                    "gender": "Male",
                                    "created": "2021-10-16T16:01:02.238Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Squid Costume Rick",
                                    "species": "Robot",
                                    "type": "Decoy",
                                    "gender": "Male",
                                    "created": "2021-10-16T16:01:52.437Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Squid Costume Summer",
                                    "species": "Robot",
                                    "type": "Decoy",
                                    "gender": "Female",
                                    "created": "2021-10-16T16:03:02.153Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Steve",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2021-10-16T16:06:00.878Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Too Cute to Murder Beth",
                                    "species": "Robot",
                                    "type": "Decoy",
                                    "gender": "Female",
                                    "created": "2021-10-17T09:40:13.581Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Too Cute to Murder Rick",
                                    "species": "Robot",
                                    "type": "Decoy",
                                    "gender": "Male",
                                    "created": "2021-10-17T09:40:51.620Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Too Cute to Murder Jerry",
                                    "species": "Robot",
                                    "type": "Decoy",
                                    "gender": "Male",
                                    "created": "2021-10-17T09:41:30.782Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Too Cute to Murder Morty",
                                    "species": "Robot",
                                    "type": "Decoy",
                                    "gender": "Male",
                                    "created": "2021-10-17T09:42:15.208Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Too Cute to Murder Summer",
                                    "species": "Robot",
                                    "type": "Decoy",
                                    "gender": "Female",
                                    "created": "2021-10-17T09:42:51.073Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Planetina",
                                    "species": "Humanoid",
                                    "type": "Summon",
                                    "gender": "Female",
                                    "created": "2021-10-17T09:50:18.307Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Diesel Weasel",
                                    "species": "Animal",
                                    "type": "Weasel",
                                    "gender": "Male",
                                    "created": "2021-10-17T09:55:17.683Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Eddie",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2021-10-17T09:57:07.971Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Xing Ho",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Female",
                                    "created": "2021-10-17T09:57:46.574Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Air Tina-Teer",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Female",
                                    "created": "2021-10-17T09:58:49.388Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Water Tina-Teer",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2021-10-17T09:59:26.786Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Planetina Buyer",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2021-10-17T10:00:06.914Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Tony Galopagus",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2021-10-17T10:01:10.143Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Sticky",
                                    "species": "unknown",
                                    "type": "Super Sperm Monster",
                                    "gender": "Male",
                                    "created": "2021-10-17T10:09:46.047Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Professor Shabooboo",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2021-10-17T10:10:44.560Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Sperm Queen",
                                    "species": "unknown",
                                    "type": "Super Sperm Monster",
                                    "gender": "Female",
                                    "created": "2021-10-17T10:12:05.246Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "CHUD King",
                                    "species": "Animal",
                                    "type": "CHUD",
                                    "gender": "Male",
                                    "created": "2021-10-17T10:32:39.601Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Princess Ponietta",
                                    "species": "Animal",
                                    "type": "CHUD",
                                    "gender": "Female",
                                    "created": "2021-10-17T10:35:15.825Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Blazen",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2021-10-17T11:59:00.689Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Kathy Ireland",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Female",
                                    "created": "2021-10-17T12:00:07.076Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Amazing Johnathan",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2021-10-17T12:00:50.753Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Foal Sanchez",
                                    "species": "Humanoid",
                                    "type": "CHUD Human Mix",
                                    "gender": "unknown",
                                    "created": "2021-10-17T12:08:38.935Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Cirque du Soleil Zumanity Member",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Female",
                                    "created": "2021-10-17T12:24:53.547Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Cirque du Soleil Zumanity Member",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2021-10-17T12:25:18.152Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Cirque du Soleil Zumanity Member",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Female",
                                    "created": "2021-10-17T12:25:53.904Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Cirque du Soleil Zumanity Member",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Female",
                                    "created": "2021-10-17T12:26:27.530Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Cirque du Soleil Zumanity Member",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Female",
                                    "created": "2021-10-17T12:27:42.669Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Bruce Chutback",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2021-10-17T13:35:30.793Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Space Cruiser",
                                    "species": "Robot",
                                    "type": "Artificial Intelligence",
                                    "gender": "Female",
                                    "created": "2021-10-17T14:09:39.783Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Coop",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2021-10-17T14:13:09.623Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Dwayne",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2021-10-17T14:14:04.450Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Franklin D. Roosevelt",
                                    "species": "Humanoid",
                                    "type": "Guinea Pig for the Polio Vaccine",
                                    "gender": "Male",
                                    "created": "2021-10-17T14:19:57.500Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "President's General",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2021-10-17T14:26:07.815Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Giant Assassin Hidden in the Statue of Liberty",
                                    "species": "Robot",
                                    "type": "",
                                    "gender": "Female",
                                    "created": "2021-10-17T14:59:32.923Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Turkey Morty",
                                    "species": "Animal",
                                    "type": "Turkey",
                                    "gender": "Male",
                                    "created": "2021-10-17T15:01:58.524Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Turkey Rick",
                                    "species": "Animal",
                                    "type": "Turkey",
                                    "gender": "Male",
                                    "created": "2021-10-17T15:02:38.081Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Turkey President Curtis",
                                    "species": "Animal",
                                    "type": "Turkey",
                                    "gender": "Male",
                                    "created": "2021-10-17T15:03:29.593Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Martínez",
                                    "species": "Animal",
                                    "type": "Turkey",
                                    "gender": "Male",
                                    "created": "2021-10-17T15:06:48.939Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Marvin",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2021-10-17T15:07:24.718Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Jackey",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2021-10-17T15:08:16.906Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Native Alien",
                                    "species": "Alien",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2021-10-17T15:09:22.123Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Pilgrim Alien",
                                    "species": "Alien",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2021-10-17T15:10:21.016Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "President Turkey",
                                    "species": "Humanoid",
                                    "type": "Turkey Human Mix",
                                    "gender": "Male",
                                    "created": "2021-10-17T15:11:48.815Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Mary-Lou",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Female",
                                    "created": "2021-10-17T15:26:42.828Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Big Fat rick",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2021-10-25T08:54:36.735Z",
                                    "status": "unknown"
                                },
                                {
                                    "name": "Hothead Rick",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2021-10-25T08:55:48.771Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Ricardo Montoya",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2021-10-25T08:56:41.727Z",
                                    "status": "unknown"
                                },
                                {
                                    "name": "Wrap-it-up Little Rick",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2021-10-25T08:57:20.725Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Yo-yo Rick",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2021-10-25T08:58:05.108Z",
                                    "status": "unknown"
                                },
                                {
                                    "name": "Voiceoverian",
                                    "species": "Alien",
                                    "type": "Parasite",
                                    "gender": "unknown",
                                    "created": "2021-10-25T08:59:23.442Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Voiceoverian",
                                    "species": "Alien",
                                    "type": "Parasite",
                                    "gender": "unknown",
                                    "created": "2021-10-25T08:59:52.011Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Gotron Pilot",
                                    "species": "Human",
                                    "type": "Anime",
                                    "gender": "Male",
                                    "created": "2021-10-25T09:00:59.768Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Gotron Pilot",
                                    "species": "Human",
                                    "type": "Anime",
                                    "gender": "Male",
                                    "created": "2021-10-25T09:02:55.146Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Gotron Pilot",
                                    "species": "Human",
                                    "type": "Anime",
                                    "gender": "Male",
                                    "created": "2021-10-25T09:04:17.165Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Rick's Garage",
                                    "species": "Robot",
                                    "type": "Artificial Intelligence",
                                    "gender": "Female",
                                    "created": "2021-10-25T09:18:48.188Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Birdperson & Tammy's Child",
                                    "species": "Humanoid",
                                    "type": "Bird-Person Human Mix",
                                    "gender": "Female",
                                    "created": "2021-10-25T09:27:05.325Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Mr. Cookie President",
                                    "species": "Alien",
                                    "type": "Cookie",
                                    "gender": "Male",
                                    "created": "2021-10-25T10:18:19.997Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Nick",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2021-10-25T10:19:06.159Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Harold (Garbage Goober)",
                                    "species": "Alien",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2021-10-25T10:20:33.373Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Harold's Wife",
                                    "species": "Alien",
                                    "type": "",
                                    "gender": "Female",
                                    "created": "2021-10-25T10:21:17.779Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Samansky",
                                    "species": "Alien",
                                    "type": "Normal Size Bug",
                                    "gender": "Male",
                                    "created": "2021-11-02T13:04:18.866Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Super Turkey",
                                    "species": "Humanoid",
                                    "type": "Turkey Human Mix",
                                    "gender": "Male",
                                    "created": "2021-11-02T13:11:52.372Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Crow Horse",
                                    "species": "Robot",
                                    "type": "Crow Horse",
                                    "gender": "unknown",
                                    "created": "2021-11-02T14:11:56.442Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Gotron",
                                    "species": "Robot",
                                    "type": "Ferret Robot",
                                    "gender": "Genderless",
                                    "created": "2021-11-02T17:15:24.788Z",
                                    "status": "unknown"
                                },
                                {
                                    "name": "Butter Robot",
                                    "species": "Robot",
                                    "type": "Passing Butter Robot",
                                    "gender": "Genderless",
                                    "created": "2021-11-02T17:24:37.458Z",
                                    "status": "Alive"
                                }
                            ]
                        }
                    },
                    {
                        "name": "Armothy",
                        "species": "unknown",
                        "type": "Self-aware arm",
                        "gender": "Male",
                        "created": "2017-11-05T08:54:29.343Z",
                        "status": "Dead",
                        "origin": {
                            "id": "8",
                            "name": "Post-Apocalyptic Earth",
                            "type": "Planet",
                            "dimension": "Post-Apocalyptic Dimension",
                            "residents": [
                                {
                                    "name": "Armothy",
                                    "species": "unknown",
                                    "type": "Self-aware arm",
                                    "gender": "Male",
                                    "created": "2017-11-05T08:54:29.343Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Blue Footprint Guy",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-11-05T11:26:42.084Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Colossus",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-11-30T11:17:32.733Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Eli",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-26T13:37:27.635Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Eli's Girlfriend",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Female",
                                    "created": "2017-12-26T13:38:47.115Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Genital Washer",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-27T18:47:44.566Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Hemorrhage",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-29T15:44:40.083Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Mohawk Guy",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-30T16:10:03.881Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Slaveowner",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2018-01-05T15:13:46.862Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Taint Washer",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2018-01-10T17:23:26.944Z",
                                    "status": "Alive"
                                }
                            ]
                        }
                    },
                    {
                        "name": "Blue Footprint Guy",
                        "species": "Human",
                        "type": "",
                        "gender": "Male",
                        "created": "2017-11-05T11:26:42.084Z",
                        "status": "Dead",
                        "origin": {
                            "id": "8",
                            "name": "Post-Apocalyptic Earth",
                            "type": "Planet",
                            "dimension": "Post-Apocalyptic Dimension",
                            "residents": [
                                {
                                    "name": "Armothy",
                                    "species": "unknown",
                                    "type": "Self-aware arm",
                                    "gender": "Male",
                                    "created": "2017-11-05T08:54:29.343Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Blue Footprint Guy",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-11-05T11:26:42.084Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Colossus",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-11-30T11:17:32.733Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Eli",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-26T13:37:27.635Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Eli's Girlfriend",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Female",
                                    "created": "2017-12-26T13:38:47.115Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Genital Washer",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-27T18:47:44.566Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Hemorrhage",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-29T15:44:40.083Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Mohawk Guy",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-30T16:10:03.881Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Slaveowner",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2018-01-05T15:13:46.862Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Taint Washer",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2018-01-10T17:23:26.944Z",
                                    "status": "Alive"
                                }
                            ]
                        }
                    },
                    {
                        "name": "Colossus",
                        "species": "Human",
                        "type": "",
                        "gender": "Male",
                        "created": "2017-11-30T11:17:32.733Z",
                        "status": "Dead",
                        "origin": {
                            "id": "8",
                            "name": "Post-Apocalyptic Earth",
                            "type": "Planet",
                            "dimension": "Post-Apocalyptic Dimension",
                            "residents": [
                                {
                                    "name": "Armothy",
                                    "species": "unknown",
                                    "type": "Self-aware arm",
                                    "gender": "Male",
                                    "created": "2017-11-05T08:54:29.343Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Blue Footprint Guy",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-11-05T11:26:42.084Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Colossus",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-11-30T11:17:32.733Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Eli",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-26T13:37:27.635Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Eli's Girlfriend",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Female",
                                    "created": "2017-12-26T13:38:47.115Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Genital Washer",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-27T18:47:44.566Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Hemorrhage",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-29T15:44:40.083Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Mohawk Guy",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-30T16:10:03.881Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Slaveowner",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2018-01-05T15:13:46.862Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Taint Washer",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2018-01-10T17:23:26.944Z",
                                    "status": "Alive"
                                }
                            ]
                        }
                    },
                    {
                        "name": "Eli",
                        "species": "Human",
                        "type": "",
                        "gender": "Male",
                        "created": "2017-12-26T13:37:27.635Z",
                        "status": "Alive",
                        "origin": {
                            "id": "8",
                            "name": "Post-Apocalyptic Earth",
                            "type": "Planet",
                            "dimension": "Post-Apocalyptic Dimension",
                            "residents": [
                                {
                                    "name": "Armothy",
                                    "species": "unknown",
                                    "type": "Self-aware arm",
                                    "gender": "Male",
                                    "created": "2017-11-05T08:54:29.343Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Blue Footprint Guy",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-11-05T11:26:42.084Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Colossus",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-11-30T11:17:32.733Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Eli",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-26T13:37:27.635Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Eli's Girlfriend",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Female",
                                    "created": "2017-12-26T13:38:47.115Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Genital Washer",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-27T18:47:44.566Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Hemorrhage",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-29T15:44:40.083Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Mohawk Guy",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-30T16:10:03.881Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Slaveowner",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2018-01-05T15:13:46.862Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Taint Washer",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2018-01-10T17:23:26.944Z",
                                    "status": "Alive"
                                }
                            ]
                        }
                    },
                    {
                        "name": "Eli's Girlfriend",
                        "species": "Human",
                        "type": "",
                        "gender": "Female",
                        "created": "2017-12-26T13:38:47.115Z",
                        "status": "Alive",
                        "origin": {
                            "id": "8",
                            "name": "Post-Apocalyptic Earth",
                            "type": "Planet",
                            "dimension": "Post-Apocalyptic Dimension",
                            "residents": [
                                {
                                    "name": "Armothy",
                                    "species": "unknown",
                                    "type": "Self-aware arm",
                                    "gender": "Male",
                                    "created": "2017-11-05T08:54:29.343Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Blue Footprint Guy",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-11-05T11:26:42.084Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Colossus",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-11-30T11:17:32.733Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Eli",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-26T13:37:27.635Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Eli's Girlfriend",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Female",
                                    "created": "2017-12-26T13:38:47.115Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Genital Washer",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-27T18:47:44.566Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Hemorrhage",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-29T15:44:40.083Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Mohawk Guy",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-30T16:10:03.881Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Slaveowner",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2018-01-05T15:13:46.862Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Taint Washer",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2018-01-10T17:23:26.944Z",
                                    "status": "Alive"
                                }
                            ]
                        }
                    },
                    {
                        "name": "Genital Washer",
                        "species": "Human",
                        "type": "",
                        "gender": "Male",
                        "created": "2017-12-27T18:47:44.566Z",
                        "status": "Alive",
                        "origin": {
                            "id": "8",
                            "name": "Post-Apocalyptic Earth",
                            "type": "Planet",
                            "dimension": "Post-Apocalyptic Dimension",
                            "residents": [
                                {
                                    "name": "Armothy",
                                    "species": "unknown",
                                    "type": "Self-aware arm",
                                    "gender": "Male",
                                    "created": "2017-11-05T08:54:29.343Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Blue Footprint Guy",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-11-05T11:26:42.084Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Colossus",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-11-30T11:17:32.733Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Eli",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-26T13:37:27.635Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Eli's Girlfriend",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Female",
                                    "created": "2017-12-26T13:38:47.115Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Genital Washer",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-27T18:47:44.566Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Hemorrhage",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-29T15:44:40.083Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Mohawk Guy",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-30T16:10:03.881Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Slaveowner",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2018-01-05T15:13:46.862Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Taint Washer",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2018-01-10T17:23:26.944Z",
                                    "status": "Alive"
                                }
                            ]
                        }
                    },
                    {
                        "name": "Hemorrhage",
                        "species": "Human",
                        "type": "",
                        "gender": "Male",
                        "created": "2017-12-29T15:44:40.083Z",
                        "status": "Alive",
                        "origin": {
                            "id": "8",
                            "name": "Post-Apocalyptic Earth",
                            "type": "Planet",
                            "dimension": "Post-Apocalyptic Dimension",
                            "residents": [
                                {
                                    "name": "Armothy",
                                    "species": "unknown",
                                    "type": "Self-aware arm",
                                    "gender": "Male",
                                    "created": "2017-11-05T08:54:29.343Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Blue Footprint Guy",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-11-05T11:26:42.084Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Colossus",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-11-30T11:17:32.733Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Eli",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-26T13:37:27.635Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Eli's Girlfriend",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Female",
                                    "created": "2017-12-26T13:38:47.115Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Genital Washer",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-27T18:47:44.566Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Hemorrhage",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-29T15:44:40.083Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Mohawk Guy",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-30T16:10:03.881Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Slaveowner",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2018-01-05T15:13:46.862Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Taint Washer",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2018-01-10T17:23:26.944Z",
                                    "status": "Alive"
                                }
                            ]
                        }
                    },
                    {
                        "name": "Mechanical Morty",
                        "species": "Robot",
                        "type": "",
                        "gender": "Male",
                        "created": "2017-12-30T14:32:17.158Z",
                        "status": "Dead",
                        "origin": {
                            "id": "20",
                            "name": "Earth (Replacement Dimension)",
                            "type": "Planet",
                            "dimension": "Replacement Dimension",
                            "residents": [
                                {
                                    "name": "Summer Smith",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Female",
                                    "created": "2017-11-04T19:09:56.428Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Beth Smith",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Female",
                                    "created": "2017-11-04T19:22:43.665Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Jerry Smith",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-11-04T19:26:56.301Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Agency Director",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-11-04T20:06:54.976Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Albert Einstein",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-11-04T20:20:20.965Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Alien Googah",
                                    "species": "Alien",
                                    "type": "",
                                    "gender": "unknown",
                                    "created": "2017-11-04T20:33:30.779Z",
                                    "status": "unknown"
                                },
                                {
                                    "name": "Amish Cyborg",
                                    "species": "Alien",
                                    "type": "Parasite",
                                    "gender": "Male",
                                    "created": "2017-11-04T21:12:45.235Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Baby Wizard",
                                    "species": "Alien",
                                    "type": "Parasite",
                                    "gender": "Male",
                                    "created": "2017-11-05T09:15:11.286Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Bearded Lady",
                                    "species": "Alien",
                                    "type": "Parasite",
                                    "gender": "Female",
                                    "created": "2017-11-05T09:18:04.184Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Blim Blam",
                                    "species": "Alien",
                                    "type": "Korblock",
                                    "gender": "Male",
                                    "created": "2017-11-05T11:21:43.756Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Brad",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-11-05T11:40:02.554Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Brad Anderson",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-11-05T11:41:38.964Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Chris",
                                    "species": "Alien",
                                    "type": "Organic gun",
                                    "gender": "unknown",
                                    "created": "2017-11-05T12:25:03.541Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Coach Feratu (Balik Alistane)",
                                    "species": "Mythological Creature",
                                    "type": "Vampire",
                                    "gender": "Male",
                                    "created": "2017-11-30T11:10:10.491Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Cousin Nicky",
                                    "species": "Alien",
                                    "type": "Parasite",
                                    "gender": "Male",
                                    "created": "2017-11-30T14:11:52.882Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Cynthia",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Female",
                                    "created": "2017-11-30T21:16:35.633Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Doofus Rick",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-01T12:29:27.984Z",
                                    "status": "unknown"
                                },
                                {
                                    "name": "Dr. Wong",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Female",
                                    "created": "2017-12-26T12:55:58.449Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Duck With Muscles",
                                    "species": "Alien",
                                    "type": "Parasite",
                                    "gender": "Male",
                                    "created": "2017-12-26T13:17:40.686Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Eric Stoltz Mask Morty",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-26T13:43:29.296Z",
                                    "status": "unknown"
                                },
                                {
                                    "name": "Ethan",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-26T16:01:50.939Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Father Bob",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-26T17:31:29.113Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Frankenstein's Monster",
                                    "species": "Alien",
                                    "type": "Parasite",
                                    "gender": "Male",
                                    "created": "2017-12-26T19:24:56.679Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Gene",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-27T18:14:57.885Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "General Nathan",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-27T18:22:18.387Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Ghost in a Jar",
                                    "species": "Alien",
                                    "type": "Parasite",
                                    "gender": "Genderless",
                                    "created": "2017-12-27T19:14:14.545Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Gobo",
                                    "species": "Alien",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-29T11:38:29.578Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Gordon Lunas",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-29T11:44:00.169Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Gwendolyn",
                                    "species": "Robot",
                                    "type": "Gazorpian reproduction robot",
                                    "gender": "Female",
                                    "created": "2017-12-29T12:31:50.388Z",
                                    "status": "unknown"
                                },
                                {
                                    "name": "Hamurai",
                                    "species": "Alien",
                                    "type": "Parasite",
                                    "gender": "Male",
                                    "created": "2017-12-29T15:32:05.287Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Invisi-trooper",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-29T17:06:28.325Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Izzy",
                                    "species": "Animal",
                                    "type": "Cat",
                                    "gender": "unknown",
                                    "created": "2017-12-29T17:07:59.024Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Jacqueline",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Female",
                                    "created": "2017-12-29T17:22:17.707Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Jaguar",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-29T17:25:38.138Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Jamey",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-29T17:30:20.654Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Jessica",
                                    "species": "Human",
                                    "type": "Time God",
                                    "gender": "Female",
                                    "created": "2017-12-29T18:36:27.225Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Jessica's Friend",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Female",
                                    "created": "2017-12-29T18:47:23.345Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Jim",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-29T18:49:48.953Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Joseph Eli Lipkip",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-29T18:56:15.622Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Katarina",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Female",
                                    "created": "2017-12-29T19:13:57.070Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Keara",
                                    "species": "Alien",
                                    "type": "Krootabulan",
                                    "gender": "Female",
                                    "created": "2017-12-29T19:26:06.900Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Lil B",
                                    "species": "Alien",
                                    "type": "Snail alien",
                                    "gender": "Male",
                                    "created": "2017-12-30T12:54:31.725Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Lucy",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Female",
                                    "created": "2017-12-30T14:01:23.319Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Mechanical Morty",
                                    "species": "Robot",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-30T14:32:17.158Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Mechanical Rick",
                                    "species": "Robot",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-30T14:33:16.920Z",
                                    "status": "unknown"
                                },
                                {
                                    "name": "Mechanical Summer",
                                    "species": "Robot",
                                    "type": "",
                                    "gender": "Female",
                                    "created": "2017-12-30T14:33:49.392Z",
                                    "status": "unknown"
                                },
                                {
                                    "name": "Mitch",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-30T16:08:38.157Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Morty Jr.",
                                    "species": "Humanoid",
                                    "type": "Human Gazorpian",
                                    "gender": "Male",
                                    "created": "2017-12-30T16:20:51.391Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Morty K-22",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-30T16:33:49.577Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Morty Smith",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-30T16:35:01.223Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Mr. Beauregard",
                                    "species": "Alien",
                                    "type": "Parasite",
                                    "gender": "Male",
                                    "created": "2017-12-30T17:28:28.409Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Mr. Benson",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-30T17:30:31.757Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Mr. Goldenfold",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-30T17:42:56.349Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Mr. Marklovitz",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-30T17:46:19.052Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Mr. Needful",
                                    "species": "Humanoid",
                                    "type": "The Devil",
                                    "gender": "Male",
                                    "created": "2017-12-30T17:54:06.996Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Mr. Poopybutthole",
                                    "species": "Poopybutthole",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-30T18:03:48.054Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Mrs. Lipkip",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Female",
                                    "created": "2017-12-30T18:05:59.999Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Mrs. Refrigerator",
                                    "species": "Alien",
                                    "type": "Parasite",
                                    "gender": "Female",
                                    "created": "2017-12-30T18:12:38.369Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Nancy",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Female",
                                    "created": "2017-12-31T12:46:54.095Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Orthodox Jew",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-31T13:19:29.825Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Pencilvester",
                                    "species": "Alien",
                                    "type": "Parasite",
                                    "gender": "Male",
                                    "created": "2017-12-31T13:33:48.488Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Photography Raptor",
                                    "species": "Alien",
                                    "type": "Parasite",
                                    "gender": "unknown",
                                    "created": "2017-12-31T13:40:32.312Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Pickle Rick",
                                    "species": "unknown",
                                    "type": "Pickle",
                                    "gender": "Male",
                                    "created": "2017-12-31T13:47:10.617Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Principal Vagina",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-31T14:09:09.071Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Rat Boss",
                                    "species": "Animal",
                                    "type": "Rat",
                                    "gender": "unknown",
                                    "created": "2017-12-31T14:17:21.782Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Reverse Giraffe",
                                    "species": "Alien",
                                    "type": "Parasite",
                                    "gender": "Male",
                                    "created": "2017-12-31T14:22:46.285Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Rick K-22",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-31T20:20:40.484Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Rick Sanchez",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-31T20:22:29.032Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Sleepy Gary",
                                    "species": "Alien",
                                    "type": "Parasite",
                                    "gender": "Male",
                                    "created": "2018-01-05T15:17:26.876Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Slippery Stair",
                                    "species": "Mythological Creature",
                                    "type": "Slug",
                                    "gender": "Male",
                                    "created": "2018-01-10T16:11:09.964Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Slow Mobius",
                                    "species": "Humanoid",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2018-01-10T16:13:26.380Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Stacy",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Female",
                                    "created": "2018-01-10T16:31:10.465Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Steve",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2018-01-10T16:39:34.837Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Taddy Mason",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2018-01-10T17:07:09.052Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Terry",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2018-01-10T17:37:51.767Z",
                                    "status": "unknown"
                                },
                                {
                                    "name": "President Curtis",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2018-01-10T17:43:37.411Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Tinkles",
                                    "species": "Alien",
                                    "type": "Parasite",
                                    "gender": "Female",
                                    "created": "2018-01-10T17:58:51.840Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Tiny Rick",
                                    "species": "Human",
                                    "type": "Clone",
                                    "gender": "Male",
                                    "created": "2018-01-10T18:00:35.848Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Toby Matthews",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2018-01-10T18:02:03.402Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Tommy's Clone",
                                    "species": "Human",
                                    "type": "Clone",
                                    "gender": "Male",
                                    "created": "2018-01-10T18:07:45.541Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Toxic Morty",
                                    "species": "Humanoid",
                                    "type": "Morty's toxic side",
                                    "gender": "Male",
                                    "created": "2018-01-10T18:18:05.422Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Toxic Rick",
                                    "species": "Humanoid",
                                    "type": "Rick's toxic side",
                                    "gender": "Male",
                                    "created": "2018-01-10T18:20:41.703Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Trandor",
                                    "species": "Alien",
                                    "type": "Krootabulan",
                                    "gender": "Male",
                                    "created": "2018-01-10T18:54:36.578Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Tricia Lange",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Female",
                                    "created": "2018-01-10T18:59:31.842Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Vampire Master",
                                    "species": "Mythological Creature",
                                    "type": "Vampire",
                                    "gender": "Male",
                                    "created": "2018-01-10T19:23:45.478Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Voltematron",
                                    "species": "Alien",
                                    "type": "Parasite",
                                    "gender": "unknown",
                                    "created": "2018-01-10T19:29:08.116Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Zick Zack",
                                    "species": "Alien",
                                    "type": "Floop Floopian",
                                    "gender": "Male",
                                    "created": "2018-01-10T20:00:05.681Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Uncle Steve",
                                    "species": "Alien",
                                    "type": "Parasite",
                                    "gender": "Male",
                                    "created": "2018-01-14T13:34:50.096Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Morty Jr's interviewer",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2018-04-15T17:43:56.832Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Guy from The Bachelor",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2018-04-15T17:45:38.589Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Trunkphobic suspenders guy",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2018-04-15T20:31:46.065Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Synthetic Laser Eels",
                                    "species": "Animal",
                                    "type": "Eel",
                                    "gender": "unknown",
                                    "created": "2018-04-16T21:08:47.956Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Pripudlian",
                                    "species": "Alien",
                                    "type": "Pripudlian",
                                    "gender": "unknown",
                                    "created": "2018-04-16T22:21:57.962Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Michael",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2018-05-01T11:51:10.604Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Michael's Lawyer",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2018-05-01T11:57:16.266Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Veterinary",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Female",
                                    "created": "2018-05-01T11:58:43.275Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Veterinary Nurse",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2018-05-01T11:59:15.544Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Simon",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2018-05-01T14:20:10.187Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Vampire Master's Assistant",
                                    "species": "Mythological Creature",
                                    "type": "Vampire",
                                    "gender": "Male",
                                    "created": "2018-05-01T15:20:15.582Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Morphizer-XE Customer Support",
                                    "species": "Alien",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2018-05-22T16:46:18.038Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Morphizer-XE Customer Support",
                                    "species": "Alien",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2018-05-22T16:46:37.603Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Morphizer-XE Customer Support",
                                    "species": "Alien",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2018-05-22T16:46:50.518Z",
                                    "status": "unknown"
                                },
                                {
                                    "name": "Little Voltron",
                                    "species": "Robot",
                                    "type": "",
                                    "gender": "Genderless",
                                    "created": "2018-05-22T17:07:21.833Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Varrix",
                                    "species": "Alien",
                                    "type": "",
                                    "gender": "unknown",
                                    "created": "2018-05-22T17:49:13.883Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Secretary of the Interior",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2018-05-22T17:51:07.373Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Hologram Rick",
                                    "species": "Humanoid",
                                    "type": "Hologram",
                                    "gender": "Male",
                                    "created": "2020-05-02T10:30:38.622Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Bully",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2020-05-02T12:22:11.339Z",
                                    "status": "unknown"
                                },
                                {
                                    "name": "Anchorman",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2020-05-02T12:23:38.655Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Anchorwoman",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Female",
                                    "created": "2020-05-02T12:24:07.452Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Morty’s Lawyer",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2020-05-02T12:25:59.290Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Judge",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Female",
                                    "created": "2020-05-02T12:27:08.223Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Public Opinion Judge",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Female",
                                    "created": "2020-05-02T12:28:05.671Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Wasp Rick",
                                    "species": "Animal",
                                    "type": "Wasp",
                                    "gender": "Male",
                                    "created": "2020-05-02T12:36:47.872Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Wasp Rick’s Clone",
                                    "species": "Animal",
                                    "type": "Wasp",
                                    "gender": "Male",
                                    "created": "2020-05-02T12:38:18.097Z",
                                    "status": "unknown"
                                },
                                {
                                    "name": "Boglin",
                                    "species": "unknown",
                                    "type": "Toy",
                                    "gender": "unknown",
                                    "created": "2020-05-02T12:50:15.005Z",
                                    "status": "unknown"
                                },
                                {
                                    "name": "Kirkland Brand Mr. Meeseeks",
                                    "species": "Humanoid",
                                    "type": "Meeseeks",
                                    "gender": "Male",
                                    "created": "2020-05-02T12:52:58.134Z",
                                    "status": "unknown"
                                },
                                {
                                    "name": "Danny Publitz",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2020-05-02T13:14:28.386Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Tony's Dad",
                                    "species": "Alien",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2020-05-02T13:52:06.880Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Jeff",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2020-05-02T13:54:21.374Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Josiah",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2020-05-02T13:54:48.651Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Maggie",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Female",
                                    "created": "2020-05-02T13:55:15.098Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Priest Witherspoon",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2020-05-02T13:55:45.767Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Richard",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2020-05-02T13:56:14.834Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Running Bird",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2020-05-02T13:56:45.926Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Secretary at Tony's",
                                    "species": "Alien",
                                    "type": "",
                                    "gender": "Female",
                                    "created": "2020-05-02T13:57:49.250Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Netflix Executive",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2020-05-07T11:19:57.540Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Balthromaw",
                                    "species": "Mythological Creature",
                                    "type": "Dragon",
                                    "gender": "Male",
                                    "created": "2020-05-07T11:32:16.357Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Talking Cat",
                                    "species": "Animal",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2020-05-07T11:33:37.456Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Chachi",
                                    "species": "Alien",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2020-05-07T12:01:38.426Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Snake Resistance Robot",
                                    "species": "Robot",
                                    "type": "Human-Snake hybrid",
                                    "gender": "Genderless",
                                    "created": "2020-05-07T12:15:50.438Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Bar Customer",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2020-05-07T12:37:52.695Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Bartender",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Female",
                                    "created": "2020-05-07T12:38:23.983Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "PC Basketball Player",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2020-05-07T12:42:24.982Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Pet Shop Employee",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2020-05-07T12:46:51.424Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "High Pilot",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2020-05-07T12:55:35.833Z",
                                    "status": "unknown"
                                },
                                {
                                    "name": "High Pilot",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2020-05-07T12:56:10.200Z",
                                    "status": "unknown"
                                },
                                {
                                    "name": "Phoenixperson",
                                    "species": "Alien",
                                    "type": "Cyborg",
                                    "gender": "Male",
                                    "created": "2020-08-05T12:43:16.671Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Defiance Beth",
                                    "species": "Human",
                                    "type": "Clone",
                                    "gender": "Female",
                                    "created": "2020-08-13T12:48:55.885Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Mr. Nimbus",
                                    "species": "Mythological Creature",
                                    "type": "Sexy Aquaman",
                                    "gender": "Male",
                                    "created": "2021-10-16T11:55:58.042Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Adam",
                                    "species": "Humanoid",
                                    "type": "Narnian",
                                    "gender": "Male",
                                    "created": "2021-10-16T13:18:13.644Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Mr. Nimbus Secretary",
                                    "species": "Animal",
                                    "type": "Starfish",
                                    "gender": "Female",
                                    "created": "2021-10-16T13:45:26.155Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Mr. Nimbus' Squid",
                                    "species": "Animal",
                                    "type": "Squid",
                                    "gender": "Male",
                                    "created": "2021-10-16T13:51:28.877Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Scarecrow Rick",
                                    "species": "Robot",
                                    "type": "Decoy",
                                    "gender": "Male",
                                    "created": "2021-10-16T15:18:02.052Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Scarecrow Summer",
                                    "species": "Robot",
                                    "type": "Decoy",
                                    "gender": "Female",
                                    "created": "2021-10-16T15:19:13.080Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Scarecrow Jerry",
                                    "species": "Robot",
                                    "type": "Decoy",
                                    "gender": "Male",
                                    "created": "2021-10-16T15:21:40.918Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Scarecrow Morty",
                                    "species": "Robot",
                                    "type": "Decoy",
                                    "gender": "Male",
                                    "created": "2021-10-16T15:22:35.204Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Scarecrow Beth",
                                    "species": "Robot",
                                    "type": "Decoy",
                                    "gender": "Female",
                                    "created": "2021-10-16T15:23:21.971Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Glockenspiel Jerry",
                                    "species": "Robot",
                                    "type": "Decoy",
                                    "gender": "Male",
                                    "created": "2021-10-16T15:32:27.166Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Glockenspiel Beth",
                                    "species": "Robot",
                                    "type": "Decoy",
                                    "gender": "Female",
                                    "created": "2021-10-16T15:34:41.082Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Glockenspiel Rick",
                                    "species": "Robot",
                                    "type": "Decoy",
                                    "gender": "Male",
                                    "created": "2021-10-16T15:36:04.423Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Glockenspiel Summer",
                                    "species": "Robot",
                                    "type": "Decoy",
                                    "gender": "Female",
                                    "created": "2021-10-16T15:36:59.730Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Glockenspiel Morty",
                                    "species": "Robot",
                                    "type": "Decoy",
                                    "gender": "Male",
                                    "created": "2021-10-16T15:37:40.381Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Wicker Beth",
                                    "species": "Robot",
                                    "type": "Decoy",
                                    "gender": "Female",
                                    "created": "2021-10-16T15:40:01.248Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Wicker Rick",
                                    "species": "Robot",
                                    "type": "Decoy",
                                    "gender": "Male",
                                    "created": "2021-10-16T15:40:51.046Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Wicker Morty",
                                    "species": "Robot",
                                    "type": "Decoy",
                                    "gender": "Male",
                                    "created": "2021-10-16T15:41:28.941Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Wicker Summer",
                                    "species": "Robot",
                                    "type": "Decoy",
                                    "gender": "Female",
                                    "created": "2021-10-16T15:42:51.860Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Metal Rick",
                                    "species": "Robot",
                                    "type": "Decoy",
                                    "gender": "Male",
                                    "created": "2021-10-16T15:43:50.568Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Gun Brain Rick",
                                    "species": "Robot",
                                    "type": "Decoy",
                                    "gender": "Male",
                                    "created": "2021-10-16T15:46:56.288Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Mr. Always Wants to be Hunted",
                                    "species": "Poopybutthole",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2021-10-16T15:51:02.924Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Squid Costume Beth",
                                    "species": "Robot",
                                    "type": "Decoy",
                                    "gender": "Female",
                                    "created": "2021-10-16T15:55:49.506Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Squid Costume Jerry",
                                    "species": "Robot",
                                    "type": "Decoy",
                                    "gender": "Male",
                                    "created": "2021-10-16T16:00:00.400Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Squid Costume Morty",
                                    "species": "Robot",
                                    "type": "Decoy",
                                    "gender": "Male",
                                    "created": "2021-10-16T16:01:02.238Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Squid Costume Rick",
                                    "species": "Robot",
                                    "type": "Decoy",
                                    "gender": "Male",
                                    "created": "2021-10-16T16:01:52.437Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Squid Costume Summer",
                                    "species": "Robot",
                                    "type": "Decoy",
                                    "gender": "Female",
                                    "created": "2021-10-16T16:03:02.153Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Steve",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2021-10-16T16:06:00.878Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Too Cute to Murder Beth",
                                    "species": "Robot",
                                    "type": "Decoy",
                                    "gender": "Female",
                                    "created": "2021-10-17T09:40:13.581Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Too Cute to Murder Rick",
                                    "species": "Robot",
                                    "type": "Decoy",
                                    "gender": "Male",
                                    "created": "2021-10-17T09:40:51.620Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Too Cute to Murder Jerry",
                                    "species": "Robot",
                                    "type": "Decoy",
                                    "gender": "Male",
                                    "created": "2021-10-17T09:41:30.782Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Too Cute to Murder Morty",
                                    "species": "Robot",
                                    "type": "Decoy",
                                    "gender": "Male",
                                    "created": "2021-10-17T09:42:15.208Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Too Cute to Murder Summer",
                                    "species": "Robot",
                                    "type": "Decoy",
                                    "gender": "Female",
                                    "created": "2021-10-17T09:42:51.073Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Planetina",
                                    "species": "Humanoid",
                                    "type": "Summon",
                                    "gender": "Female",
                                    "created": "2021-10-17T09:50:18.307Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Diesel Weasel",
                                    "species": "Animal",
                                    "type": "Weasel",
                                    "gender": "Male",
                                    "created": "2021-10-17T09:55:17.683Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Eddie",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2021-10-17T09:57:07.971Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Xing Ho",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Female",
                                    "created": "2021-10-17T09:57:46.574Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Air Tina-Teer",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Female",
                                    "created": "2021-10-17T09:58:49.388Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Water Tina-Teer",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2021-10-17T09:59:26.786Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Planetina Buyer",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2021-10-17T10:00:06.914Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Tony Galopagus",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2021-10-17T10:01:10.143Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Sticky",
                                    "species": "unknown",
                                    "type": "Super Sperm Monster",
                                    "gender": "Male",
                                    "created": "2021-10-17T10:09:46.047Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Professor Shabooboo",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2021-10-17T10:10:44.560Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Sperm Queen",
                                    "species": "unknown",
                                    "type": "Super Sperm Monster",
                                    "gender": "Female",
                                    "created": "2021-10-17T10:12:05.246Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "CHUD King",
                                    "species": "Animal",
                                    "type": "CHUD",
                                    "gender": "Male",
                                    "created": "2021-10-17T10:32:39.601Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Princess Ponietta",
                                    "species": "Animal",
                                    "type": "CHUD",
                                    "gender": "Female",
                                    "created": "2021-10-17T10:35:15.825Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Blazen",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2021-10-17T11:59:00.689Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Kathy Ireland",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Female",
                                    "created": "2021-10-17T12:00:07.076Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Amazing Johnathan",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2021-10-17T12:00:50.753Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Foal Sanchez",
                                    "species": "Humanoid",
                                    "type": "CHUD Human Mix",
                                    "gender": "unknown",
                                    "created": "2021-10-17T12:08:38.935Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Cirque du Soleil Zumanity Member",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Female",
                                    "created": "2021-10-17T12:24:53.547Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Cirque du Soleil Zumanity Member",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2021-10-17T12:25:18.152Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Cirque du Soleil Zumanity Member",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Female",
                                    "created": "2021-10-17T12:25:53.904Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Cirque du Soleil Zumanity Member",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Female",
                                    "created": "2021-10-17T12:26:27.530Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Cirque du Soleil Zumanity Member",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Female",
                                    "created": "2021-10-17T12:27:42.669Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Bruce Chutback",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2021-10-17T13:35:30.793Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Space Cruiser",
                                    "species": "Robot",
                                    "type": "Artificial Intelligence",
                                    "gender": "Female",
                                    "created": "2021-10-17T14:09:39.783Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Coop",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2021-10-17T14:13:09.623Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Dwayne",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2021-10-17T14:14:04.450Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Franklin D. Roosevelt",
                                    "species": "Humanoid",
                                    "type": "Guinea Pig for the Polio Vaccine",
                                    "gender": "Male",
                                    "created": "2021-10-17T14:19:57.500Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "President's General",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2021-10-17T14:26:07.815Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Giant Assassin Hidden in the Statue of Liberty",
                                    "species": "Robot",
                                    "type": "",
                                    "gender": "Female",
                                    "created": "2021-10-17T14:59:32.923Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Turkey Morty",
                                    "species": "Animal",
                                    "type": "Turkey",
                                    "gender": "Male",
                                    "created": "2021-10-17T15:01:58.524Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Turkey Rick",
                                    "species": "Animal",
                                    "type": "Turkey",
                                    "gender": "Male",
                                    "created": "2021-10-17T15:02:38.081Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Turkey President Curtis",
                                    "species": "Animal",
                                    "type": "Turkey",
                                    "gender": "Male",
                                    "created": "2021-10-17T15:03:29.593Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Martínez",
                                    "species": "Animal",
                                    "type": "Turkey",
                                    "gender": "Male",
                                    "created": "2021-10-17T15:06:48.939Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Marvin",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2021-10-17T15:07:24.718Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Jackey",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2021-10-17T15:08:16.906Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Native Alien",
                                    "species": "Alien",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2021-10-17T15:09:22.123Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Pilgrim Alien",
                                    "species": "Alien",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2021-10-17T15:10:21.016Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "President Turkey",
                                    "species": "Humanoid",
                                    "type": "Turkey Human Mix",
                                    "gender": "Male",
                                    "created": "2021-10-17T15:11:48.815Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Mary-Lou",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Female",
                                    "created": "2021-10-17T15:26:42.828Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Big Fat rick",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2021-10-25T08:54:36.735Z",
                                    "status": "unknown"
                                },
                                {
                                    "name": "Hothead Rick",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2021-10-25T08:55:48.771Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Ricardo Montoya",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2021-10-25T08:56:41.727Z",
                                    "status": "unknown"
                                },
                                {
                                    "name": "Wrap-it-up Little Rick",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2021-10-25T08:57:20.725Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Yo-yo Rick",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2021-10-25T08:58:05.108Z",
                                    "status": "unknown"
                                },
                                {
                                    "name": "Voiceoverian",
                                    "species": "Alien",
                                    "type": "Parasite",
                                    "gender": "unknown",
                                    "created": "2021-10-25T08:59:23.442Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Voiceoverian",
                                    "species": "Alien",
                                    "type": "Parasite",
                                    "gender": "unknown",
                                    "created": "2021-10-25T08:59:52.011Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Gotron Pilot",
                                    "species": "Human",
                                    "type": "Anime",
                                    "gender": "Male",
                                    "created": "2021-10-25T09:00:59.768Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Gotron Pilot",
                                    "species": "Human",
                                    "type": "Anime",
                                    "gender": "Male",
                                    "created": "2021-10-25T09:02:55.146Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Gotron Pilot",
                                    "species": "Human",
                                    "type": "Anime",
                                    "gender": "Male",
                                    "created": "2021-10-25T09:04:17.165Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Rick's Garage",
                                    "species": "Robot",
                                    "type": "Artificial Intelligence",
                                    "gender": "Female",
                                    "created": "2021-10-25T09:18:48.188Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Birdperson & Tammy's Child",
                                    "species": "Humanoid",
                                    "type": "Bird-Person Human Mix",
                                    "gender": "Female",
                                    "created": "2021-10-25T09:27:05.325Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Mr. Cookie President",
                                    "species": "Alien",
                                    "type": "Cookie",
                                    "gender": "Male",
                                    "created": "2021-10-25T10:18:19.997Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Nick",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2021-10-25T10:19:06.159Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Harold (Garbage Goober)",
                                    "species": "Alien",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2021-10-25T10:20:33.373Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Harold's Wife",
                                    "species": "Alien",
                                    "type": "",
                                    "gender": "Female",
                                    "created": "2021-10-25T10:21:17.779Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Samansky",
                                    "species": "Alien",
                                    "type": "Normal Size Bug",
                                    "gender": "Male",
                                    "created": "2021-11-02T13:04:18.866Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Super Turkey",
                                    "species": "Humanoid",
                                    "type": "Turkey Human Mix",
                                    "gender": "Male",
                                    "created": "2021-11-02T13:11:52.372Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Crow Horse",
                                    "species": "Robot",
                                    "type": "Crow Horse",
                                    "gender": "unknown",
                                    "created": "2021-11-02T14:11:56.442Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Gotron",
                                    "species": "Robot",
                                    "type": "Ferret Robot",
                                    "gender": "Genderless",
                                    "created": "2021-11-02T17:15:24.788Z",
                                    "status": "unknown"
                                },
                                {
                                    "name": "Butter Robot",
                                    "species": "Robot",
                                    "type": "Passing Butter Robot",
                                    "gender": "Genderless",
                                    "created": "2021-11-02T17:24:37.458Z",
                                    "status": "Alive"
                                }
                            ]
                        }
                    },
                    {
                        "name": "Mechanical Rick",
                        "species": "Robot",
                        "type": "",
                        "gender": "Male",
                        "created": "2017-12-30T14:33:16.920Z",
                        "status": "unknown",
                        "origin": {
                            "id": "20",
                            "name": "Earth (Replacement Dimension)",
                            "type": "Planet",
                            "dimension": "Replacement Dimension",
                            "residents": [
                                {
                                    "name": "Summer Smith",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Female",
                                    "created": "2017-11-04T19:09:56.428Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Beth Smith",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Female",
                                    "created": "2017-11-04T19:22:43.665Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Jerry Smith",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-11-04T19:26:56.301Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Agency Director",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-11-04T20:06:54.976Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Albert Einstein",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-11-04T20:20:20.965Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Alien Googah",
                                    "species": "Alien",
                                    "type": "",
                                    "gender": "unknown",
                                    "created": "2017-11-04T20:33:30.779Z",
                                    "status": "unknown"
                                },
                                {
                                    "name": "Amish Cyborg",
                                    "species": "Alien",
                                    "type": "Parasite",
                                    "gender": "Male",
                                    "created": "2017-11-04T21:12:45.235Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Baby Wizard",
                                    "species": "Alien",
                                    "type": "Parasite",
                                    "gender": "Male",
                                    "created": "2017-11-05T09:15:11.286Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Bearded Lady",
                                    "species": "Alien",
                                    "type": "Parasite",
                                    "gender": "Female",
                                    "created": "2017-11-05T09:18:04.184Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Blim Blam",
                                    "species": "Alien",
                                    "type": "Korblock",
                                    "gender": "Male",
                                    "created": "2017-11-05T11:21:43.756Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Brad",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-11-05T11:40:02.554Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Brad Anderson",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-11-05T11:41:38.964Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Chris",
                                    "species": "Alien",
                                    "type": "Organic gun",
                                    "gender": "unknown",
                                    "created": "2017-11-05T12:25:03.541Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Coach Feratu (Balik Alistane)",
                                    "species": "Mythological Creature",
                                    "type": "Vampire",
                                    "gender": "Male",
                                    "created": "2017-11-30T11:10:10.491Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Cousin Nicky",
                                    "species": "Alien",
                                    "type": "Parasite",
                                    "gender": "Male",
                                    "created": "2017-11-30T14:11:52.882Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Cynthia",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Female",
                                    "created": "2017-11-30T21:16:35.633Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Doofus Rick",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-01T12:29:27.984Z",
                                    "status": "unknown"
                                },
                                {
                                    "name": "Dr. Wong",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Female",
                                    "created": "2017-12-26T12:55:58.449Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Duck With Muscles",
                                    "species": "Alien",
                                    "type": "Parasite",
                                    "gender": "Male",
                                    "created": "2017-12-26T13:17:40.686Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Eric Stoltz Mask Morty",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-26T13:43:29.296Z",
                                    "status": "unknown"
                                },
                                {
                                    "name": "Ethan",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-26T16:01:50.939Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Father Bob",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-26T17:31:29.113Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Frankenstein's Monster",
                                    "species": "Alien",
                                    "type": "Parasite",
                                    "gender": "Male",
                                    "created": "2017-12-26T19:24:56.679Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Gene",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-27T18:14:57.885Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "General Nathan",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-27T18:22:18.387Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Ghost in a Jar",
                                    "species": "Alien",
                                    "type": "Parasite",
                                    "gender": "Genderless",
                                    "created": "2017-12-27T19:14:14.545Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Gobo",
                                    "species": "Alien",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-29T11:38:29.578Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Gordon Lunas",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-29T11:44:00.169Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Gwendolyn",
                                    "species": "Robot",
                                    "type": "Gazorpian reproduction robot",
                                    "gender": "Female",
                                    "created": "2017-12-29T12:31:50.388Z",
                                    "status": "unknown"
                                },
                                {
                                    "name": "Hamurai",
                                    "species": "Alien",
                                    "type": "Parasite",
                                    "gender": "Male",
                                    "created": "2017-12-29T15:32:05.287Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Invisi-trooper",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-29T17:06:28.325Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Izzy",
                                    "species": "Animal",
                                    "type": "Cat",
                                    "gender": "unknown",
                                    "created": "2017-12-29T17:07:59.024Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Jacqueline",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Female",
                                    "created": "2017-12-29T17:22:17.707Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Jaguar",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-29T17:25:38.138Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Jamey",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-29T17:30:20.654Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Jessica",
                                    "species": "Human",
                                    "type": "Time God",
                                    "gender": "Female",
                                    "created": "2017-12-29T18:36:27.225Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Jessica's Friend",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Female",
                                    "created": "2017-12-29T18:47:23.345Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Jim",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-29T18:49:48.953Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Joseph Eli Lipkip",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-29T18:56:15.622Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Katarina",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Female",
                                    "created": "2017-12-29T19:13:57.070Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Keara",
                                    "species": "Alien",
                                    "type": "Krootabulan",
                                    "gender": "Female",
                                    "created": "2017-12-29T19:26:06.900Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Lil B",
                                    "species": "Alien",
                                    "type": "Snail alien",
                                    "gender": "Male",
                                    "created": "2017-12-30T12:54:31.725Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Lucy",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Female",
                                    "created": "2017-12-30T14:01:23.319Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Mechanical Morty",
                                    "species": "Robot",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-30T14:32:17.158Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Mechanical Rick",
                                    "species": "Robot",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-30T14:33:16.920Z",
                                    "status": "unknown"
                                },
                                {
                                    "name": "Mechanical Summer",
                                    "species": "Robot",
                                    "type": "",
                                    "gender": "Female",
                                    "created": "2017-12-30T14:33:49.392Z",
                                    "status": "unknown"
                                },
                                {
                                    "name": "Mitch",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-30T16:08:38.157Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Morty Jr.",
                                    "species": "Humanoid",
                                    "type": "Human Gazorpian",
                                    "gender": "Male",
                                    "created": "2017-12-30T16:20:51.391Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Morty K-22",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-30T16:33:49.577Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Morty Smith",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-30T16:35:01.223Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Mr. Beauregard",
                                    "species": "Alien",
                                    "type": "Parasite",
                                    "gender": "Male",
                                    "created": "2017-12-30T17:28:28.409Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Mr. Benson",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-30T17:30:31.757Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Mr. Goldenfold",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-30T17:42:56.349Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Mr. Marklovitz",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-30T17:46:19.052Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Mr. Needful",
                                    "species": "Humanoid",
                                    "type": "The Devil",
                                    "gender": "Male",
                                    "created": "2017-12-30T17:54:06.996Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Mr. Poopybutthole",
                                    "species": "Poopybutthole",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-30T18:03:48.054Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Mrs. Lipkip",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Female",
                                    "created": "2017-12-30T18:05:59.999Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Mrs. Refrigerator",
                                    "species": "Alien",
                                    "type": "Parasite",
                                    "gender": "Female",
                                    "created": "2017-12-30T18:12:38.369Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Nancy",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Female",
                                    "created": "2017-12-31T12:46:54.095Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Orthodox Jew",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-31T13:19:29.825Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Pencilvester",
                                    "species": "Alien",
                                    "type": "Parasite",
                                    "gender": "Male",
                                    "created": "2017-12-31T13:33:48.488Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Photography Raptor",
                                    "species": "Alien",
                                    "type": "Parasite",
                                    "gender": "unknown",
                                    "created": "2017-12-31T13:40:32.312Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Pickle Rick",
                                    "species": "unknown",
                                    "type": "Pickle",
                                    "gender": "Male",
                                    "created": "2017-12-31T13:47:10.617Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Principal Vagina",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-31T14:09:09.071Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Rat Boss",
                                    "species": "Animal",
                                    "type": "Rat",
                                    "gender": "unknown",
                                    "created": "2017-12-31T14:17:21.782Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Reverse Giraffe",
                                    "species": "Alien",
                                    "type": "Parasite",
                                    "gender": "Male",
                                    "created": "2017-12-31T14:22:46.285Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Rick K-22",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-31T20:20:40.484Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Rick Sanchez",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-31T20:22:29.032Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Sleepy Gary",
                                    "species": "Alien",
                                    "type": "Parasite",
                                    "gender": "Male",
                                    "created": "2018-01-05T15:17:26.876Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Slippery Stair",
                                    "species": "Mythological Creature",
                                    "type": "Slug",
                                    "gender": "Male",
                                    "created": "2018-01-10T16:11:09.964Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Slow Mobius",
                                    "species": "Humanoid",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2018-01-10T16:13:26.380Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Stacy",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Female",
                                    "created": "2018-01-10T16:31:10.465Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Steve",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2018-01-10T16:39:34.837Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Taddy Mason",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2018-01-10T17:07:09.052Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Terry",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2018-01-10T17:37:51.767Z",
                                    "status": "unknown"
                                },
                                {
                                    "name": "President Curtis",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2018-01-10T17:43:37.411Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Tinkles",
                                    "species": "Alien",
                                    "type": "Parasite",
                                    "gender": "Female",
                                    "created": "2018-01-10T17:58:51.840Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Tiny Rick",
                                    "species": "Human",
                                    "type": "Clone",
                                    "gender": "Male",
                                    "created": "2018-01-10T18:00:35.848Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Toby Matthews",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2018-01-10T18:02:03.402Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Tommy's Clone",
                                    "species": "Human",
                                    "type": "Clone",
                                    "gender": "Male",
                                    "created": "2018-01-10T18:07:45.541Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Toxic Morty",
                                    "species": "Humanoid",
                                    "type": "Morty's toxic side",
                                    "gender": "Male",
                                    "created": "2018-01-10T18:18:05.422Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Toxic Rick",
                                    "species": "Humanoid",
                                    "type": "Rick's toxic side",
                                    "gender": "Male",
                                    "created": "2018-01-10T18:20:41.703Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Trandor",
                                    "species": "Alien",
                                    "type": "Krootabulan",
                                    "gender": "Male",
                                    "created": "2018-01-10T18:54:36.578Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Tricia Lange",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Female",
                                    "created": "2018-01-10T18:59:31.842Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Vampire Master",
                                    "species": "Mythological Creature",
                                    "type": "Vampire",
                                    "gender": "Male",
                                    "created": "2018-01-10T19:23:45.478Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Voltematron",
                                    "species": "Alien",
                                    "type": "Parasite",
                                    "gender": "unknown",
                                    "created": "2018-01-10T19:29:08.116Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Zick Zack",
                                    "species": "Alien",
                                    "type": "Floop Floopian",
                                    "gender": "Male",
                                    "created": "2018-01-10T20:00:05.681Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Uncle Steve",
                                    "species": "Alien",
                                    "type": "Parasite",
                                    "gender": "Male",
                                    "created": "2018-01-14T13:34:50.096Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Morty Jr's interviewer",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2018-04-15T17:43:56.832Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Guy from The Bachelor",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2018-04-15T17:45:38.589Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Trunkphobic suspenders guy",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2018-04-15T20:31:46.065Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Synthetic Laser Eels",
                                    "species": "Animal",
                                    "type": "Eel",
                                    "gender": "unknown",
                                    "created": "2018-04-16T21:08:47.956Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Pripudlian",
                                    "species": "Alien",
                                    "type": "Pripudlian",
                                    "gender": "unknown",
                                    "created": "2018-04-16T22:21:57.962Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Michael",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2018-05-01T11:51:10.604Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Michael's Lawyer",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2018-05-01T11:57:16.266Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Veterinary",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Female",
                                    "created": "2018-05-01T11:58:43.275Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Veterinary Nurse",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2018-05-01T11:59:15.544Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Simon",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2018-05-01T14:20:10.187Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Vampire Master's Assistant",
                                    "species": "Mythological Creature",
                                    "type": "Vampire",
                                    "gender": "Male",
                                    "created": "2018-05-01T15:20:15.582Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Morphizer-XE Customer Support",
                                    "species": "Alien",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2018-05-22T16:46:18.038Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Morphizer-XE Customer Support",
                                    "species": "Alien",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2018-05-22T16:46:37.603Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Morphizer-XE Customer Support",
                                    "species": "Alien",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2018-05-22T16:46:50.518Z",
                                    "status": "unknown"
                                },
                                {
                                    "name": "Little Voltron",
                                    "species": "Robot",
                                    "type": "",
                                    "gender": "Genderless",
                                    "created": "2018-05-22T17:07:21.833Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Varrix",
                                    "species": "Alien",
                                    "type": "",
                                    "gender": "unknown",
                                    "created": "2018-05-22T17:49:13.883Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Secretary of the Interior",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2018-05-22T17:51:07.373Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Hologram Rick",
                                    "species": "Humanoid",
                                    "type": "Hologram",
                                    "gender": "Male",
                                    "created": "2020-05-02T10:30:38.622Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Bully",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2020-05-02T12:22:11.339Z",
                                    "status": "unknown"
                                },
                                {
                                    "name": "Anchorman",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2020-05-02T12:23:38.655Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Anchorwoman",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Female",
                                    "created": "2020-05-02T12:24:07.452Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Morty’s Lawyer",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2020-05-02T12:25:59.290Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Judge",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Female",
                                    "created": "2020-05-02T12:27:08.223Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Public Opinion Judge",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Female",
                                    "created": "2020-05-02T12:28:05.671Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Wasp Rick",
                                    "species": "Animal",
                                    "type": "Wasp",
                                    "gender": "Male",
                                    "created": "2020-05-02T12:36:47.872Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Wasp Rick’s Clone",
                                    "species": "Animal",
                                    "type": "Wasp",
                                    "gender": "Male",
                                    "created": "2020-05-02T12:38:18.097Z",
                                    "status": "unknown"
                                },
                                {
                                    "name": "Boglin",
                                    "species": "unknown",
                                    "type": "Toy",
                                    "gender": "unknown",
                                    "created": "2020-05-02T12:50:15.005Z",
                                    "status": "unknown"
                                },
                                {
                                    "name": "Kirkland Brand Mr. Meeseeks",
                                    "species": "Humanoid",
                                    "type": "Meeseeks",
                                    "gender": "Male",
                                    "created": "2020-05-02T12:52:58.134Z",
                                    "status": "unknown"
                                },
                                {
                                    "name": "Danny Publitz",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2020-05-02T13:14:28.386Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Tony's Dad",
                                    "species": "Alien",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2020-05-02T13:52:06.880Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Jeff",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2020-05-02T13:54:21.374Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Josiah",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2020-05-02T13:54:48.651Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Maggie",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Female",
                                    "created": "2020-05-02T13:55:15.098Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Priest Witherspoon",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2020-05-02T13:55:45.767Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Richard",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2020-05-02T13:56:14.834Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Running Bird",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2020-05-02T13:56:45.926Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Secretary at Tony's",
                                    "species": "Alien",
                                    "type": "",
                                    "gender": "Female",
                                    "created": "2020-05-02T13:57:49.250Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Netflix Executive",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2020-05-07T11:19:57.540Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Balthromaw",
                                    "species": "Mythological Creature",
                                    "type": "Dragon",
                                    "gender": "Male",
                                    "created": "2020-05-07T11:32:16.357Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Talking Cat",
                                    "species": "Animal",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2020-05-07T11:33:37.456Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Chachi",
                                    "species": "Alien",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2020-05-07T12:01:38.426Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Snake Resistance Robot",
                                    "species": "Robot",
                                    "type": "Human-Snake hybrid",
                                    "gender": "Genderless",
                                    "created": "2020-05-07T12:15:50.438Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Bar Customer",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2020-05-07T12:37:52.695Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Bartender",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Female",
                                    "created": "2020-05-07T12:38:23.983Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "PC Basketball Player",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2020-05-07T12:42:24.982Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Pet Shop Employee",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2020-05-07T12:46:51.424Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "High Pilot",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2020-05-07T12:55:35.833Z",
                                    "status": "unknown"
                                },
                                {
                                    "name": "High Pilot",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2020-05-07T12:56:10.200Z",
                                    "status": "unknown"
                                },
                                {
                                    "name": "Phoenixperson",
                                    "species": "Alien",
                                    "type": "Cyborg",
                                    "gender": "Male",
                                    "created": "2020-08-05T12:43:16.671Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Defiance Beth",
                                    "species": "Human",
                                    "type": "Clone",
                                    "gender": "Female",
                                    "created": "2020-08-13T12:48:55.885Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Mr. Nimbus",
                                    "species": "Mythological Creature",
                                    "type": "Sexy Aquaman",
                                    "gender": "Male",
                                    "created": "2021-10-16T11:55:58.042Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Adam",
                                    "species": "Humanoid",
                                    "type": "Narnian",
                                    "gender": "Male",
                                    "created": "2021-10-16T13:18:13.644Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Mr. Nimbus Secretary",
                                    "species": "Animal",
                                    "type": "Starfish",
                                    "gender": "Female",
                                    "created": "2021-10-16T13:45:26.155Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Mr. Nimbus' Squid",
                                    "species": "Animal",
                                    "type": "Squid",
                                    "gender": "Male",
                                    "created": "2021-10-16T13:51:28.877Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Scarecrow Rick",
                                    "species": "Robot",
                                    "type": "Decoy",
                                    "gender": "Male",
                                    "created": "2021-10-16T15:18:02.052Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Scarecrow Summer",
                                    "species": "Robot",
                                    "type": "Decoy",
                                    "gender": "Female",
                                    "created": "2021-10-16T15:19:13.080Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Scarecrow Jerry",
                                    "species": "Robot",
                                    "type": "Decoy",
                                    "gender": "Male",
                                    "created": "2021-10-16T15:21:40.918Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Scarecrow Morty",
                                    "species": "Robot",
                                    "type": "Decoy",
                                    "gender": "Male",
                                    "created": "2021-10-16T15:22:35.204Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Scarecrow Beth",
                                    "species": "Robot",
                                    "type": "Decoy",
                                    "gender": "Female",
                                    "created": "2021-10-16T15:23:21.971Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Glockenspiel Jerry",
                                    "species": "Robot",
                                    "type": "Decoy",
                                    "gender": "Male",
                                    "created": "2021-10-16T15:32:27.166Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Glockenspiel Beth",
                                    "species": "Robot",
                                    "type": "Decoy",
                                    "gender": "Female",
                                    "created": "2021-10-16T15:34:41.082Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Glockenspiel Rick",
                                    "species": "Robot",
                                    "type": "Decoy",
                                    "gender": "Male",
                                    "created": "2021-10-16T15:36:04.423Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Glockenspiel Summer",
                                    "species": "Robot",
                                    "type": "Decoy",
                                    "gender": "Female",
                                    "created": "2021-10-16T15:36:59.730Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Glockenspiel Morty",
                                    "species": "Robot",
                                    "type": "Decoy",
                                    "gender": "Male",
                                    "created": "2021-10-16T15:37:40.381Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Wicker Beth",
                                    "species": "Robot",
                                    "type": "Decoy",
                                    "gender": "Female",
                                    "created": "2021-10-16T15:40:01.248Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Wicker Rick",
                                    "species": "Robot",
                                    "type": "Decoy",
                                    "gender": "Male",
                                    "created": "2021-10-16T15:40:51.046Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Wicker Morty",
                                    "species": "Robot",
                                    "type": "Decoy",
                                    "gender": "Male",
                                    "created": "2021-10-16T15:41:28.941Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Wicker Summer",
                                    "species": "Robot",
                                    "type": "Decoy",
                                    "gender": "Female",
                                    "created": "2021-10-16T15:42:51.860Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Metal Rick",
                                    "species": "Robot",
                                    "type": "Decoy",
                                    "gender": "Male",
                                    "created": "2021-10-16T15:43:50.568Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Gun Brain Rick",
                                    "species": "Robot",
                                    "type": "Decoy",
                                    "gender": "Male",
                                    "created": "2021-10-16T15:46:56.288Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Mr. Always Wants to be Hunted",
                                    "species": "Poopybutthole",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2021-10-16T15:51:02.924Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Squid Costume Beth",
                                    "species": "Robot",
                                    "type": "Decoy",
                                    "gender": "Female",
                                    "created": "2021-10-16T15:55:49.506Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Squid Costume Jerry",
                                    "species": "Robot",
                                    "type": "Decoy",
                                    "gender": "Male",
                                    "created": "2021-10-16T16:00:00.400Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Squid Costume Morty",
                                    "species": "Robot",
                                    "type": "Decoy",
                                    "gender": "Male",
                                    "created": "2021-10-16T16:01:02.238Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Squid Costume Rick",
                                    "species": "Robot",
                                    "type": "Decoy",
                                    "gender": "Male",
                                    "created": "2021-10-16T16:01:52.437Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Squid Costume Summer",
                                    "species": "Robot",
                                    "type": "Decoy",
                                    "gender": "Female",
                                    "created": "2021-10-16T16:03:02.153Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Steve",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2021-10-16T16:06:00.878Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Too Cute to Murder Beth",
                                    "species": "Robot",
                                    "type": "Decoy",
                                    "gender": "Female",
                                    "created": "2021-10-17T09:40:13.581Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Too Cute to Murder Rick",
                                    "species": "Robot",
                                    "type": "Decoy",
                                    "gender": "Male",
                                    "created": "2021-10-17T09:40:51.620Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Too Cute to Murder Jerry",
                                    "species": "Robot",
                                    "type": "Decoy",
                                    "gender": "Male",
                                    "created": "2021-10-17T09:41:30.782Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Too Cute to Murder Morty",
                                    "species": "Robot",
                                    "type": "Decoy",
                                    "gender": "Male",
                                    "created": "2021-10-17T09:42:15.208Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Too Cute to Murder Summer",
                                    "species": "Robot",
                                    "type": "Decoy",
                                    "gender": "Female",
                                    "created": "2021-10-17T09:42:51.073Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Planetina",
                                    "species": "Humanoid",
                                    "type": "Summon",
                                    "gender": "Female",
                                    "created": "2021-10-17T09:50:18.307Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Diesel Weasel",
                                    "species": "Animal",
                                    "type": "Weasel",
                                    "gender": "Male",
                                    "created": "2021-10-17T09:55:17.683Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Eddie",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2021-10-17T09:57:07.971Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Xing Ho",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Female",
                                    "created": "2021-10-17T09:57:46.574Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Air Tina-Teer",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Female",
                                    "created": "2021-10-17T09:58:49.388Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Water Tina-Teer",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2021-10-17T09:59:26.786Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Planetina Buyer",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2021-10-17T10:00:06.914Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Tony Galopagus",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2021-10-17T10:01:10.143Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Sticky",
                                    "species": "unknown",
                                    "type": "Super Sperm Monster",
                                    "gender": "Male",
                                    "created": "2021-10-17T10:09:46.047Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Professor Shabooboo",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2021-10-17T10:10:44.560Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Sperm Queen",
                                    "species": "unknown",
                                    "type": "Super Sperm Monster",
                                    "gender": "Female",
                                    "created": "2021-10-17T10:12:05.246Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "CHUD King",
                                    "species": "Animal",
                                    "type": "CHUD",
                                    "gender": "Male",
                                    "created": "2021-10-17T10:32:39.601Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Princess Ponietta",
                                    "species": "Animal",
                                    "type": "CHUD",
                                    "gender": "Female",
                                    "created": "2021-10-17T10:35:15.825Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Blazen",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2021-10-17T11:59:00.689Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Kathy Ireland",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Female",
                                    "created": "2021-10-17T12:00:07.076Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Amazing Johnathan",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2021-10-17T12:00:50.753Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Foal Sanchez",
                                    "species": "Humanoid",
                                    "type": "CHUD Human Mix",
                                    "gender": "unknown",
                                    "created": "2021-10-17T12:08:38.935Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Cirque du Soleil Zumanity Member",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Female",
                                    "created": "2021-10-17T12:24:53.547Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Cirque du Soleil Zumanity Member",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2021-10-17T12:25:18.152Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Cirque du Soleil Zumanity Member",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Female",
                                    "created": "2021-10-17T12:25:53.904Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Cirque du Soleil Zumanity Member",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Female",
                                    "created": "2021-10-17T12:26:27.530Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Cirque du Soleil Zumanity Member",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Female",
                                    "created": "2021-10-17T12:27:42.669Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Bruce Chutback",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2021-10-17T13:35:30.793Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Space Cruiser",
                                    "species": "Robot",
                                    "type": "Artificial Intelligence",
                                    "gender": "Female",
                                    "created": "2021-10-17T14:09:39.783Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Coop",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2021-10-17T14:13:09.623Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Dwayne",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2021-10-17T14:14:04.450Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Franklin D. Roosevelt",
                                    "species": "Humanoid",
                                    "type": "Guinea Pig for the Polio Vaccine",
                                    "gender": "Male",
                                    "created": "2021-10-17T14:19:57.500Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "President's General",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2021-10-17T14:26:07.815Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Giant Assassin Hidden in the Statue of Liberty",
                                    "species": "Robot",
                                    "type": "",
                                    "gender": "Female",
                                    "created": "2021-10-17T14:59:32.923Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Turkey Morty",
                                    "species": "Animal",
                                    "type": "Turkey",
                                    "gender": "Male",
                                    "created": "2021-10-17T15:01:58.524Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Turkey Rick",
                                    "species": "Animal",
                                    "type": "Turkey",
                                    "gender": "Male",
                                    "created": "2021-10-17T15:02:38.081Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Turkey President Curtis",
                                    "species": "Animal",
                                    "type": "Turkey",
                                    "gender": "Male",
                                    "created": "2021-10-17T15:03:29.593Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Martínez",
                                    "species": "Animal",
                                    "type": "Turkey",
                                    "gender": "Male",
                                    "created": "2021-10-17T15:06:48.939Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Marvin",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2021-10-17T15:07:24.718Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Jackey",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2021-10-17T15:08:16.906Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Native Alien",
                                    "species": "Alien",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2021-10-17T15:09:22.123Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Pilgrim Alien",
                                    "species": "Alien",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2021-10-17T15:10:21.016Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "President Turkey",
                                    "species": "Humanoid",
                                    "type": "Turkey Human Mix",
                                    "gender": "Male",
                                    "created": "2021-10-17T15:11:48.815Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Mary-Lou",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Female",
                                    "created": "2021-10-17T15:26:42.828Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Big Fat rick",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2021-10-25T08:54:36.735Z",
                                    "status": "unknown"
                                },
                                {
                                    "name": "Hothead Rick",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2021-10-25T08:55:48.771Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Ricardo Montoya",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2021-10-25T08:56:41.727Z",
                                    "status": "unknown"
                                },
                                {
                                    "name": "Wrap-it-up Little Rick",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2021-10-25T08:57:20.725Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Yo-yo Rick",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2021-10-25T08:58:05.108Z",
                                    "status": "unknown"
                                },
                                {
                                    "name": "Voiceoverian",
                                    "species": "Alien",
                                    "type": "Parasite",
                                    "gender": "unknown",
                                    "created": "2021-10-25T08:59:23.442Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Voiceoverian",
                                    "species": "Alien",
                                    "type": "Parasite",
                                    "gender": "unknown",
                                    "created": "2021-10-25T08:59:52.011Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Gotron Pilot",
                                    "species": "Human",
                                    "type": "Anime",
                                    "gender": "Male",
                                    "created": "2021-10-25T09:00:59.768Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Gotron Pilot",
                                    "species": "Human",
                                    "type": "Anime",
                                    "gender": "Male",
                                    "created": "2021-10-25T09:02:55.146Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Gotron Pilot",
                                    "species": "Human",
                                    "type": "Anime",
                                    "gender": "Male",
                                    "created": "2021-10-25T09:04:17.165Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Rick's Garage",
                                    "species": "Robot",
                                    "type": "Artificial Intelligence",
                                    "gender": "Female",
                                    "created": "2021-10-25T09:18:48.188Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Birdperson & Tammy's Child",
                                    "species": "Humanoid",
                                    "type": "Bird-Person Human Mix",
                                    "gender": "Female",
                                    "created": "2021-10-25T09:27:05.325Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Mr. Cookie President",
                                    "species": "Alien",
                                    "type": "Cookie",
                                    "gender": "Male",
                                    "created": "2021-10-25T10:18:19.997Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Nick",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2021-10-25T10:19:06.159Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Harold (Garbage Goober)",
                                    "species": "Alien",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2021-10-25T10:20:33.373Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Harold's Wife",
                                    "species": "Alien",
                                    "type": "",
                                    "gender": "Female",
                                    "created": "2021-10-25T10:21:17.779Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Samansky",
                                    "species": "Alien",
                                    "type": "Normal Size Bug",
                                    "gender": "Male",
                                    "created": "2021-11-02T13:04:18.866Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Super Turkey",
                                    "species": "Humanoid",
                                    "type": "Turkey Human Mix",
                                    "gender": "Male",
                                    "created": "2021-11-02T13:11:52.372Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Crow Horse",
                                    "species": "Robot",
                                    "type": "Crow Horse",
                                    "gender": "unknown",
                                    "created": "2021-11-02T14:11:56.442Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Gotron",
                                    "species": "Robot",
                                    "type": "Ferret Robot",
                                    "gender": "Genderless",
                                    "created": "2021-11-02T17:15:24.788Z",
                                    "status": "unknown"
                                },
                                {
                                    "name": "Butter Robot",
                                    "species": "Robot",
                                    "type": "Passing Butter Robot",
                                    "gender": "Genderless",
                                    "created": "2021-11-02T17:24:37.458Z",
                                    "status": "Alive"
                                }
                            ]
                        }
                    },
                    {
                        "name": "Mechanical Summer",
                        "species": "Robot",
                        "type": "",
                        "gender": "Female",
                        "created": "2017-12-30T14:33:49.392Z",
                        "status": "unknown",
                        "origin": {
                            "id": "20",
                            "name": "Earth (Replacement Dimension)",
                            "type": "Planet",
                            "dimension": "Replacement Dimension",
                            "residents": [
                                {
                                    "name": "Summer Smith",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Female",
                                    "created": "2017-11-04T19:09:56.428Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Beth Smith",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Female",
                                    "created": "2017-11-04T19:22:43.665Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Jerry Smith",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-11-04T19:26:56.301Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Agency Director",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-11-04T20:06:54.976Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Albert Einstein",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-11-04T20:20:20.965Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Alien Googah",
                                    "species": "Alien",
                                    "type": "",
                                    "gender": "unknown",
                                    "created": "2017-11-04T20:33:30.779Z",
                                    "status": "unknown"
                                },
                                {
                                    "name": "Amish Cyborg",
                                    "species": "Alien",
                                    "type": "Parasite",
                                    "gender": "Male",
                                    "created": "2017-11-04T21:12:45.235Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Baby Wizard",
                                    "species": "Alien",
                                    "type": "Parasite",
                                    "gender": "Male",
                                    "created": "2017-11-05T09:15:11.286Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Bearded Lady",
                                    "species": "Alien",
                                    "type": "Parasite",
                                    "gender": "Female",
                                    "created": "2017-11-05T09:18:04.184Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Blim Blam",
                                    "species": "Alien",
                                    "type": "Korblock",
                                    "gender": "Male",
                                    "created": "2017-11-05T11:21:43.756Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Brad",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-11-05T11:40:02.554Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Brad Anderson",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-11-05T11:41:38.964Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Chris",
                                    "species": "Alien",
                                    "type": "Organic gun",
                                    "gender": "unknown",
                                    "created": "2017-11-05T12:25:03.541Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Coach Feratu (Balik Alistane)",
                                    "species": "Mythological Creature",
                                    "type": "Vampire",
                                    "gender": "Male",
                                    "created": "2017-11-30T11:10:10.491Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Cousin Nicky",
                                    "species": "Alien",
                                    "type": "Parasite",
                                    "gender": "Male",
                                    "created": "2017-11-30T14:11:52.882Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Cynthia",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Female",
                                    "created": "2017-11-30T21:16:35.633Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Doofus Rick",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-01T12:29:27.984Z",
                                    "status": "unknown"
                                },
                                {
                                    "name": "Dr. Wong",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Female",
                                    "created": "2017-12-26T12:55:58.449Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Duck With Muscles",
                                    "species": "Alien",
                                    "type": "Parasite",
                                    "gender": "Male",
                                    "created": "2017-12-26T13:17:40.686Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Eric Stoltz Mask Morty",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-26T13:43:29.296Z",
                                    "status": "unknown"
                                },
                                {
                                    "name": "Ethan",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-26T16:01:50.939Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Father Bob",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-26T17:31:29.113Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Frankenstein's Monster",
                                    "species": "Alien",
                                    "type": "Parasite",
                                    "gender": "Male",
                                    "created": "2017-12-26T19:24:56.679Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Gene",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-27T18:14:57.885Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "General Nathan",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-27T18:22:18.387Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Ghost in a Jar",
                                    "species": "Alien",
                                    "type": "Parasite",
                                    "gender": "Genderless",
                                    "created": "2017-12-27T19:14:14.545Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Gobo",
                                    "species": "Alien",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-29T11:38:29.578Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Gordon Lunas",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-29T11:44:00.169Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Gwendolyn",
                                    "species": "Robot",
                                    "type": "Gazorpian reproduction robot",
                                    "gender": "Female",
                                    "created": "2017-12-29T12:31:50.388Z",
                                    "status": "unknown"
                                },
                                {
                                    "name": "Hamurai",
                                    "species": "Alien",
                                    "type": "Parasite",
                                    "gender": "Male",
                                    "created": "2017-12-29T15:32:05.287Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Invisi-trooper",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-29T17:06:28.325Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Izzy",
                                    "species": "Animal",
                                    "type": "Cat",
                                    "gender": "unknown",
                                    "created": "2017-12-29T17:07:59.024Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Jacqueline",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Female",
                                    "created": "2017-12-29T17:22:17.707Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Jaguar",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-29T17:25:38.138Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Jamey",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-29T17:30:20.654Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Jessica",
                                    "species": "Human",
                                    "type": "Time God",
                                    "gender": "Female",
                                    "created": "2017-12-29T18:36:27.225Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Jessica's Friend",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Female",
                                    "created": "2017-12-29T18:47:23.345Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Jim",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-29T18:49:48.953Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Joseph Eli Lipkip",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-29T18:56:15.622Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Katarina",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Female",
                                    "created": "2017-12-29T19:13:57.070Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Keara",
                                    "species": "Alien",
                                    "type": "Krootabulan",
                                    "gender": "Female",
                                    "created": "2017-12-29T19:26:06.900Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Lil B",
                                    "species": "Alien",
                                    "type": "Snail alien",
                                    "gender": "Male",
                                    "created": "2017-12-30T12:54:31.725Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Lucy",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Female",
                                    "created": "2017-12-30T14:01:23.319Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Mechanical Morty",
                                    "species": "Robot",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-30T14:32:17.158Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Mechanical Rick",
                                    "species": "Robot",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-30T14:33:16.920Z",
                                    "status": "unknown"
                                },
                                {
                                    "name": "Mechanical Summer",
                                    "species": "Robot",
                                    "type": "",
                                    "gender": "Female",
                                    "created": "2017-12-30T14:33:49.392Z",
                                    "status": "unknown"
                                },
                                {
                                    "name": "Mitch",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-30T16:08:38.157Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Morty Jr.",
                                    "species": "Humanoid",
                                    "type": "Human Gazorpian",
                                    "gender": "Male",
                                    "created": "2017-12-30T16:20:51.391Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Morty K-22",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-30T16:33:49.577Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Morty Smith",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-30T16:35:01.223Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Mr. Beauregard",
                                    "species": "Alien",
                                    "type": "Parasite",
                                    "gender": "Male",
                                    "created": "2017-12-30T17:28:28.409Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Mr. Benson",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-30T17:30:31.757Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Mr. Goldenfold",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-30T17:42:56.349Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Mr. Marklovitz",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-30T17:46:19.052Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Mr. Needful",
                                    "species": "Humanoid",
                                    "type": "The Devil",
                                    "gender": "Male",
                                    "created": "2017-12-30T17:54:06.996Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Mr. Poopybutthole",
                                    "species": "Poopybutthole",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-30T18:03:48.054Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Mrs. Lipkip",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Female",
                                    "created": "2017-12-30T18:05:59.999Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Mrs. Refrigerator",
                                    "species": "Alien",
                                    "type": "Parasite",
                                    "gender": "Female",
                                    "created": "2017-12-30T18:12:38.369Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Nancy",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Female",
                                    "created": "2017-12-31T12:46:54.095Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Orthodox Jew",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-31T13:19:29.825Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Pencilvester",
                                    "species": "Alien",
                                    "type": "Parasite",
                                    "gender": "Male",
                                    "created": "2017-12-31T13:33:48.488Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Photography Raptor",
                                    "species": "Alien",
                                    "type": "Parasite",
                                    "gender": "unknown",
                                    "created": "2017-12-31T13:40:32.312Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Pickle Rick",
                                    "species": "unknown",
                                    "type": "Pickle",
                                    "gender": "Male",
                                    "created": "2017-12-31T13:47:10.617Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Principal Vagina",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-31T14:09:09.071Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Rat Boss",
                                    "species": "Animal",
                                    "type": "Rat",
                                    "gender": "unknown",
                                    "created": "2017-12-31T14:17:21.782Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Reverse Giraffe",
                                    "species": "Alien",
                                    "type": "Parasite",
                                    "gender": "Male",
                                    "created": "2017-12-31T14:22:46.285Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Rick K-22",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-31T20:20:40.484Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Rick Sanchez",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-31T20:22:29.032Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Sleepy Gary",
                                    "species": "Alien",
                                    "type": "Parasite",
                                    "gender": "Male",
                                    "created": "2018-01-05T15:17:26.876Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Slippery Stair",
                                    "species": "Mythological Creature",
                                    "type": "Slug",
                                    "gender": "Male",
                                    "created": "2018-01-10T16:11:09.964Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Slow Mobius",
                                    "species": "Humanoid",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2018-01-10T16:13:26.380Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Stacy",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Female",
                                    "created": "2018-01-10T16:31:10.465Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Steve",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2018-01-10T16:39:34.837Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Taddy Mason",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2018-01-10T17:07:09.052Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Terry",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2018-01-10T17:37:51.767Z",
                                    "status": "unknown"
                                },
                                {
                                    "name": "President Curtis",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2018-01-10T17:43:37.411Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Tinkles",
                                    "species": "Alien",
                                    "type": "Parasite",
                                    "gender": "Female",
                                    "created": "2018-01-10T17:58:51.840Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Tiny Rick",
                                    "species": "Human",
                                    "type": "Clone",
                                    "gender": "Male",
                                    "created": "2018-01-10T18:00:35.848Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Toby Matthews",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2018-01-10T18:02:03.402Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Tommy's Clone",
                                    "species": "Human",
                                    "type": "Clone",
                                    "gender": "Male",
                                    "created": "2018-01-10T18:07:45.541Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Toxic Morty",
                                    "species": "Humanoid",
                                    "type": "Morty's toxic side",
                                    "gender": "Male",
                                    "created": "2018-01-10T18:18:05.422Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Toxic Rick",
                                    "species": "Humanoid",
                                    "type": "Rick's toxic side",
                                    "gender": "Male",
                                    "created": "2018-01-10T18:20:41.703Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Trandor",
                                    "species": "Alien",
                                    "type": "Krootabulan",
                                    "gender": "Male",
                                    "created": "2018-01-10T18:54:36.578Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Tricia Lange",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Female",
                                    "created": "2018-01-10T18:59:31.842Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Vampire Master",
                                    "species": "Mythological Creature",
                                    "type": "Vampire",
                                    "gender": "Male",
                                    "created": "2018-01-10T19:23:45.478Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Voltematron",
                                    "species": "Alien",
                                    "type": "Parasite",
                                    "gender": "unknown",
                                    "created": "2018-01-10T19:29:08.116Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Zick Zack",
                                    "species": "Alien",
                                    "type": "Floop Floopian",
                                    "gender": "Male",
                                    "created": "2018-01-10T20:00:05.681Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Uncle Steve",
                                    "species": "Alien",
                                    "type": "Parasite",
                                    "gender": "Male",
                                    "created": "2018-01-14T13:34:50.096Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Morty Jr's interviewer",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2018-04-15T17:43:56.832Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Guy from The Bachelor",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2018-04-15T17:45:38.589Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Trunkphobic suspenders guy",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2018-04-15T20:31:46.065Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Synthetic Laser Eels",
                                    "species": "Animal",
                                    "type": "Eel",
                                    "gender": "unknown",
                                    "created": "2018-04-16T21:08:47.956Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Pripudlian",
                                    "species": "Alien",
                                    "type": "Pripudlian",
                                    "gender": "unknown",
                                    "created": "2018-04-16T22:21:57.962Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Michael",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2018-05-01T11:51:10.604Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Michael's Lawyer",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2018-05-01T11:57:16.266Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Veterinary",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Female",
                                    "created": "2018-05-01T11:58:43.275Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Veterinary Nurse",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2018-05-01T11:59:15.544Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Simon",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2018-05-01T14:20:10.187Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Vampire Master's Assistant",
                                    "species": "Mythological Creature",
                                    "type": "Vampire",
                                    "gender": "Male",
                                    "created": "2018-05-01T15:20:15.582Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Morphizer-XE Customer Support",
                                    "species": "Alien",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2018-05-22T16:46:18.038Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Morphizer-XE Customer Support",
                                    "species": "Alien",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2018-05-22T16:46:37.603Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Morphizer-XE Customer Support",
                                    "species": "Alien",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2018-05-22T16:46:50.518Z",
                                    "status": "unknown"
                                },
                                {
                                    "name": "Little Voltron",
                                    "species": "Robot",
                                    "type": "",
                                    "gender": "Genderless",
                                    "created": "2018-05-22T17:07:21.833Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Varrix",
                                    "species": "Alien",
                                    "type": "",
                                    "gender": "unknown",
                                    "created": "2018-05-22T17:49:13.883Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Secretary of the Interior",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2018-05-22T17:51:07.373Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Hologram Rick",
                                    "species": "Humanoid",
                                    "type": "Hologram",
                                    "gender": "Male",
                                    "created": "2020-05-02T10:30:38.622Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Bully",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2020-05-02T12:22:11.339Z",
                                    "status": "unknown"
                                },
                                {
                                    "name": "Anchorman",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2020-05-02T12:23:38.655Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Anchorwoman",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Female",
                                    "created": "2020-05-02T12:24:07.452Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Morty’s Lawyer",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2020-05-02T12:25:59.290Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Judge",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Female",
                                    "created": "2020-05-02T12:27:08.223Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Public Opinion Judge",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Female",
                                    "created": "2020-05-02T12:28:05.671Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Wasp Rick",
                                    "species": "Animal",
                                    "type": "Wasp",
                                    "gender": "Male",
                                    "created": "2020-05-02T12:36:47.872Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Wasp Rick’s Clone",
                                    "species": "Animal",
                                    "type": "Wasp",
                                    "gender": "Male",
                                    "created": "2020-05-02T12:38:18.097Z",
                                    "status": "unknown"
                                },
                                {
                                    "name": "Boglin",
                                    "species": "unknown",
                                    "type": "Toy",
                                    "gender": "unknown",
                                    "created": "2020-05-02T12:50:15.005Z",
                                    "status": "unknown"
                                },
                                {
                                    "name": "Kirkland Brand Mr. Meeseeks",
                                    "species": "Humanoid",
                                    "type": "Meeseeks",
                                    "gender": "Male",
                                    "created": "2020-05-02T12:52:58.134Z",
                                    "status": "unknown"
                                },
                                {
                                    "name": "Danny Publitz",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2020-05-02T13:14:28.386Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Tony's Dad",
                                    "species": "Alien",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2020-05-02T13:52:06.880Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Jeff",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2020-05-02T13:54:21.374Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Josiah",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2020-05-02T13:54:48.651Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Maggie",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Female",
                                    "created": "2020-05-02T13:55:15.098Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Priest Witherspoon",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2020-05-02T13:55:45.767Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Richard",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2020-05-02T13:56:14.834Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Running Bird",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2020-05-02T13:56:45.926Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Secretary at Tony's",
                                    "species": "Alien",
                                    "type": "",
                                    "gender": "Female",
                                    "created": "2020-05-02T13:57:49.250Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Netflix Executive",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2020-05-07T11:19:57.540Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Balthromaw",
                                    "species": "Mythological Creature",
                                    "type": "Dragon",
                                    "gender": "Male",
                                    "created": "2020-05-07T11:32:16.357Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Talking Cat",
                                    "species": "Animal",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2020-05-07T11:33:37.456Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Chachi",
                                    "species": "Alien",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2020-05-07T12:01:38.426Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Snake Resistance Robot",
                                    "species": "Robot",
                                    "type": "Human-Snake hybrid",
                                    "gender": "Genderless",
                                    "created": "2020-05-07T12:15:50.438Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Bar Customer",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2020-05-07T12:37:52.695Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Bartender",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Female",
                                    "created": "2020-05-07T12:38:23.983Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "PC Basketball Player",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2020-05-07T12:42:24.982Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Pet Shop Employee",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2020-05-07T12:46:51.424Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "High Pilot",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2020-05-07T12:55:35.833Z",
                                    "status": "unknown"
                                },
                                {
                                    "name": "High Pilot",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2020-05-07T12:56:10.200Z",
                                    "status": "unknown"
                                },
                                {
                                    "name": "Phoenixperson",
                                    "species": "Alien",
                                    "type": "Cyborg",
                                    "gender": "Male",
                                    "created": "2020-08-05T12:43:16.671Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Defiance Beth",
                                    "species": "Human",
                                    "type": "Clone",
                                    "gender": "Female",
                                    "created": "2020-08-13T12:48:55.885Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Mr. Nimbus",
                                    "species": "Mythological Creature",
                                    "type": "Sexy Aquaman",
                                    "gender": "Male",
                                    "created": "2021-10-16T11:55:58.042Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Adam",
                                    "species": "Humanoid",
                                    "type": "Narnian",
                                    "gender": "Male",
                                    "created": "2021-10-16T13:18:13.644Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Mr. Nimbus Secretary",
                                    "species": "Animal",
                                    "type": "Starfish",
                                    "gender": "Female",
                                    "created": "2021-10-16T13:45:26.155Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Mr. Nimbus' Squid",
                                    "species": "Animal",
                                    "type": "Squid",
                                    "gender": "Male",
                                    "created": "2021-10-16T13:51:28.877Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Scarecrow Rick",
                                    "species": "Robot",
                                    "type": "Decoy",
                                    "gender": "Male",
                                    "created": "2021-10-16T15:18:02.052Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Scarecrow Summer",
                                    "species": "Robot",
                                    "type": "Decoy",
                                    "gender": "Female",
                                    "created": "2021-10-16T15:19:13.080Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Scarecrow Jerry",
                                    "species": "Robot",
                                    "type": "Decoy",
                                    "gender": "Male",
                                    "created": "2021-10-16T15:21:40.918Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Scarecrow Morty",
                                    "species": "Robot",
                                    "type": "Decoy",
                                    "gender": "Male",
                                    "created": "2021-10-16T15:22:35.204Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Scarecrow Beth",
                                    "species": "Robot",
                                    "type": "Decoy",
                                    "gender": "Female",
                                    "created": "2021-10-16T15:23:21.971Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Glockenspiel Jerry",
                                    "species": "Robot",
                                    "type": "Decoy",
                                    "gender": "Male",
                                    "created": "2021-10-16T15:32:27.166Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Glockenspiel Beth",
                                    "species": "Robot",
                                    "type": "Decoy",
                                    "gender": "Female",
                                    "created": "2021-10-16T15:34:41.082Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Glockenspiel Rick",
                                    "species": "Robot",
                                    "type": "Decoy",
                                    "gender": "Male",
                                    "created": "2021-10-16T15:36:04.423Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Glockenspiel Summer",
                                    "species": "Robot",
                                    "type": "Decoy",
                                    "gender": "Female",
                                    "created": "2021-10-16T15:36:59.730Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Glockenspiel Morty",
                                    "species": "Robot",
                                    "type": "Decoy",
                                    "gender": "Male",
                                    "created": "2021-10-16T15:37:40.381Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Wicker Beth",
                                    "species": "Robot",
                                    "type": "Decoy",
                                    "gender": "Female",
                                    "created": "2021-10-16T15:40:01.248Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Wicker Rick",
                                    "species": "Robot",
                                    "type": "Decoy",
                                    "gender": "Male",
                                    "created": "2021-10-16T15:40:51.046Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Wicker Morty",
                                    "species": "Robot",
                                    "type": "Decoy",
                                    "gender": "Male",
                                    "created": "2021-10-16T15:41:28.941Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Wicker Summer",
                                    "species": "Robot",
                                    "type": "Decoy",
                                    "gender": "Female",
                                    "created": "2021-10-16T15:42:51.860Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Metal Rick",
                                    "species": "Robot",
                                    "type": "Decoy",
                                    "gender": "Male",
                                    "created": "2021-10-16T15:43:50.568Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Gun Brain Rick",
                                    "species": "Robot",
                                    "type": "Decoy",
                                    "gender": "Male",
                                    "created": "2021-10-16T15:46:56.288Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Mr. Always Wants to be Hunted",
                                    "species": "Poopybutthole",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2021-10-16T15:51:02.924Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Squid Costume Beth",
                                    "species": "Robot",
                                    "type": "Decoy",
                                    "gender": "Female",
                                    "created": "2021-10-16T15:55:49.506Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Squid Costume Jerry",
                                    "species": "Robot",
                                    "type": "Decoy",
                                    "gender": "Male",
                                    "created": "2021-10-16T16:00:00.400Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Squid Costume Morty",
                                    "species": "Robot",
                                    "type": "Decoy",
                                    "gender": "Male",
                                    "created": "2021-10-16T16:01:02.238Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Squid Costume Rick",
                                    "species": "Robot",
                                    "type": "Decoy",
                                    "gender": "Male",
                                    "created": "2021-10-16T16:01:52.437Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Squid Costume Summer",
                                    "species": "Robot",
                                    "type": "Decoy",
                                    "gender": "Female",
                                    "created": "2021-10-16T16:03:02.153Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Steve",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2021-10-16T16:06:00.878Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Too Cute to Murder Beth",
                                    "species": "Robot",
                                    "type": "Decoy",
                                    "gender": "Female",
                                    "created": "2021-10-17T09:40:13.581Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Too Cute to Murder Rick",
                                    "species": "Robot",
                                    "type": "Decoy",
                                    "gender": "Male",
                                    "created": "2021-10-17T09:40:51.620Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Too Cute to Murder Jerry",
                                    "species": "Robot",
                                    "type": "Decoy",
                                    "gender": "Male",
                                    "created": "2021-10-17T09:41:30.782Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Too Cute to Murder Morty",
                                    "species": "Robot",
                                    "type": "Decoy",
                                    "gender": "Male",
                                    "created": "2021-10-17T09:42:15.208Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Too Cute to Murder Summer",
                                    "species": "Robot",
                                    "type": "Decoy",
                                    "gender": "Female",
                                    "created": "2021-10-17T09:42:51.073Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Planetina",
                                    "species": "Humanoid",
                                    "type": "Summon",
                                    "gender": "Female",
                                    "created": "2021-10-17T09:50:18.307Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Diesel Weasel",
                                    "species": "Animal",
                                    "type": "Weasel",
                                    "gender": "Male",
                                    "created": "2021-10-17T09:55:17.683Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Eddie",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2021-10-17T09:57:07.971Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Xing Ho",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Female",
                                    "created": "2021-10-17T09:57:46.574Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Air Tina-Teer",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Female",
                                    "created": "2021-10-17T09:58:49.388Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Water Tina-Teer",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2021-10-17T09:59:26.786Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Planetina Buyer",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2021-10-17T10:00:06.914Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Tony Galopagus",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2021-10-17T10:01:10.143Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Sticky",
                                    "species": "unknown",
                                    "type": "Super Sperm Monster",
                                    "gender": "Male",
                                    "created": "2021-10-17T10:09:46.047Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Professor Shabooboo",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2021-10-17T10:10:44.560Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Sperm Queen",
                                    "species": "unknown",
                                    "type": "Super Sperm Monster",
                                    "gender": "Female",
                                    "created": "2021-10-17T10:12:05.246Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "CHUD King",
                                    "species": "Animal",
                                    "type": "CHUD",
                                    "gender": "Male",
                                    "created": "2021-10-17T10:32:39.601Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Princess Ponietta",
                                    "species": "Animal",
                                    "type": "CHUD",
                                    "gender": "Female",
                                    "created": "2021-10-17T10:35:15.825Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Blazen",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2021-10-17T11:59:00.689Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Kathy Ireland",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Female",
                                    "created": "2021-10-17T12:00:07.076Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Amazing Johnathan",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2021-10-17T12:00:50.753Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Foal Sanchez",
                                    "species": "Humanoid",
                                    "type": "CHUD Human Mix",
                                    "gender": "unknown",
                                    "created": "2021-10-17T12:08:38.935Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Cirque du Soleil Zumanity Member",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Female",
                                    "created": "2021-10-17T12:24:53.547Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Cirque du Soleil Zumanity Member",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2021-10-17T12:25:18.152Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Cirque du Soleil Zumanity Member",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Female",
                                    "created": "2021-10-17T12:25:53.904Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Cirque du Soleil Zumanity Member",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Female",
                                    "created": "2021-10-17T12:26:27.530Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Cirque du Soleil Zumanity Member",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Female",
                                    "created": "2021-10-17T12:27:42.669Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Bruce Chutback",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2021-10-17T13:35:30.793Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Space Cruiser",
                                    "species": "Robot",
                                    "type": "Artificial Intelligence",
                                    "gender": "Female",
                                    "created": "2021-10-17T14:09:39.783Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Coop",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2021-10-17T14:13:09.623Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Dwayne",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2021-10-17T14:14:04.450Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Franklin D. Roosevelt",
                                    "species": "Humanoid",
                                    "type": "Guinea Pig for the Polio Vaccine",
                                    "gender": "Male",
                                    "created": "2021-10-17T14:19:57.500Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "President's General",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2021-10-17T14:26:07.815Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Giant Assassin Hidden in the Statue of Liberty",
                                    "species": "Robot",
                                    "type": "",
                                    "gender": "Female",
                                    "created": "2021-10-17T14:59:32.923Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Turkey Morty",
                                    "species": "Animal",
                                    "type": "Turkey",
                                    "gender": "Male",
                                    "created": "2021-10-17T15:01:58.524Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Turkey Rick",
                                    "species": "Animal",
                                    "type": "Turkey",
                                    "gender": "Male",
                                    "created": "2021-10-17T15:02:38.081Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Turkey President Curtis",
                                    "species": "Animal",
                                    "type": "Turkey",
                                    "gender": "Male",
                                    "created": "2021-10-17T15:03:29.593Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Martínez",
                                    "species": "Animal",
                                    "type": "Turkey",
                                    "gender": "Male",
                                    "created": "2021-10-17T15:06:48.939Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Marvin",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2021-10-17T15:07:24.718Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Jackey",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2021-10-17T15:08:16.906Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Native Alien",
                                    "species": "Alien",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2021-10-17T15:09:22.123Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Pilgrim Alien",
                                    "species": "Alien",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2021-10-17T15:10:21.016Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "President Turkey",
                                    "species": "Humanoid",
                                    "type": "Turkey Human Mix",
                                    "gender": "Male",
                                    "created": "2021-10-17T15:11:48.815Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Mary-Lou",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Female",
                                    "created": "2021-10-17T15:26:42.828Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Big Fat rick",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2021-10-25T08:54:36.735Z",
                                    "status": "unknown"
                                },
                                {
                                    "name": "Hothead Rick",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2021-10-25T08:55:48.771Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Ricardo Montoya",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2021-10-25T08:56:41.727Z",
                                    "status": "unknown"
                                },
                                {
                                    "name": "Wrap-it-up Little Rick",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2021-10-25T08:57:20.725Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Yo-yo Rick",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2021-10-25T08:58:05.108Z",
                                    "status": "unknown"
                                },
                                {
                                    "name": "Voiceoverian",
                                    "species": "Alien",
                                    "type": "Parasite",
                                    "gender": "unknown",
                                    "created": "2021-10-25T08:59:23.442Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Voiceoverian",
                                    "species": "Alien",
                                    "type": "Parasite",
                                    "gender": "unknown",
                                    "created": "2021-10-25T08:59:52.011Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Gotron Pilot",
                                    "species": "Human",
                                    "type": "Anime",
                                    "gender": "Male",
                                    "created": "2021-10-25T09:00:59.768Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Gotron Pilot",
                                    "species": "Human",
                                    "type": "Anime",
                                    "gender": "Male",
                                    "created": "2021-10-25T09:02:55.146Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Gotron Pilot",
                                    "species": "Human",
                                    "type": "Anime",
                                    "gender": "Male",
                                    "created": "2021-10-25T09:04:17.165Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Rick's Garage",
                                    "species": "Robot",
                                    "type": "Artificial Intelligence",
                                    "gender": "Female",
                                    "created": "2021-10-25T09:18:48.188Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Birdperson & Tammy's Child",
                                    "species": "Humanoid",
                                    "type": "Bird-Person Human Mix",
                                    "gender": "Female",
                                    "created": "2021-10-25T09:27:05.325Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Mr. Cookie President",
                                    "species": "Alien",
                                    "type": "Cookie",
                                    "gender": "Male",
                                    "created": "2021-10-25T10:18:19.997Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Nick",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2021-10-25T10:19:06.159Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Harold (Garbage Goober)",
                                    "species": "Alien",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2021-10-25T10:20:33.373Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Harold's Wife",
                                    "species": "Alien",
                                    "type": "",
                                    "gender": "Female",
                                    "created": "2021-10-25T10:21:17.779Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Samansky",
                                    "species": "Alien",
                                    "type": "Normal Size Bug",
                                    "gender": "Male",
                                    "created": "2021-11-02T13:04:18.866Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Super Turkey",
                                    "species": "Humanoid",
                                    "type": "Turkey Human Mix",
                                    "gender": "Male",
                                    "created": "2021-11-02T13:11:52.372Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Crow Horse",
                                    "species": "Robot",
                                    "type": "Crow Horse",
                                    "gender": "unknown",
                                    "created": "2021-11-02T14:11:56.442Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Gotron",
                                    "species": "Robot",
                                    "type": "Ferret Robot",
                                    "gender": "Genderless",
                                    "created": "2021-11-02T17:15:24.788Z",
                                    "status": "unknown"
                                },
                                {
                                    "name": "Butter Robot",
                                    "species": "Robot",
                                    "type": "Passing Butter Robot",
                                    "gender": "Genderless",
                                    "created": "2021-11-02T17:24:37.458Z",
                                    "status": "Alive"
                                }
                            ]
                        }
                    },
                    {
                        "name": "Mohawk Guy",
                        "species": "Human",
                        "type": "",
                        "gender": "Male",
                        "created": "2017-12-30T16:10:03.881Z",
                        "status": "Dead",
                        "origin": {
                            "id": "8",
                            "name": "Post-Apocalyptic Earth",
                            "type": "Planet",
                            "dimension": "Post-Apocalyptic Dimension",
                            "residents": [
                                {
                                    "name": "Armothy",
                                    "species": "unknown",
                                    "type": "Self-aware arm",
                                    "gender": "Male",
                                    "created": "2017-11-05T08:54:29.343Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Blue Footprint Guy",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-11-05T11:26:42.084Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Colossus",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-11-30T11:17:32.733Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Eli",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-26T13:37:27.635Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Eli's Girlfriend",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Female",
                                    "created": "2017-12-26T13:38:47.115Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Genital Washer",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-27T18:47:44.566Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Hemorrhage",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-29T15:44:40.083Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Mohawk Guy",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-30T16:10:03.881Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Slaveowner",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2018-01-05T15:13:46.862Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Taint Washer",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2018-01-10T17:23:26.944Z",
                                    "status": "Alive"
                                }
                            ]
                        }
                    },
                    {
                        "name": "Slaveowner",
                        "species": "Human",
                        "type": "",
                        "gender": "Male",
                        "created": "2018-01-05T15:13:46.862Z",
                        "status": "Dead",
                        "origin": {
                            "id": "8",
                            "name": "Post-Apocalyptic Earth",
                            "type": "Planet",
                            "dimension": "Post-Apocalyptic Dimension",
                            "residents": [
                                {
                                    "name": "Armothy",
                                    "species": "unknown",
                                    "type": "Self-aware arm",
                                    "gender": "Male",
                                    "created": "2017-11-05T08:54:29.343Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Blue Footprint Guy",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-11-05T11:26:42.084Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Colossus",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-11-30T11:17:32.733Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Eli",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-26T13:37:27.635Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Eli's Girlfriend",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Female",
                                    "created": "2017-12-26T13:38:47.115Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Genital Washer",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-27T18:47:44.566Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Hemorrhage",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-29T15:44:40.083Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Mohawk Guy",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-30T16:10:03.881Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Slaveowner",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2018-01-05T15:13:46.862Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Taint Washer",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2018-01-10T17:23:26.944Z",
                                    "status": "Alive"
                                }
                            ]
                        }
                    },
                    {
                        "name": "Taint Washer",
                        "species": "Human",
                        "type": "",
                        "gender": "Male",
                        "created": "2018-01-10T17:23:26.944Z",
                        "status": "Alive",
                        "origin": {
                            "id": "8",
                            "name": "Post-Apocalyptic Earth",
                            "type": "Planet",
                            "dimension": "Post-Apocalyptic Dimension",
                            "residents": [
                                {
                                    "name": "Armothy",
                                    "species": "unknown",
                                    "type": "Self-aware arm",
                                    "gender": "Male",
                                    "created": "2017-11-05T08:54:29.343Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Blue Footprint Guy",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-11-05T11:26:42.084Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Colossus",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-11-30T11:17:32.733Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Eli",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-26T13:37:27.635Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Eli's Girlfriend",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Female",
                                    "created": "2017-12-26T13:38:47.115Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Genital Washer",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-27T18:47:44.566Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Hemorrhage",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-29T15:44:40.083Z",
                                    "status": "Alive"
                                },
                                {
                                    "name": "Mohawk Guy",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2017-12-30T16:10:03.881Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Slaveowner",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2018-01-05T15:13:46.862Z",
                                    "status": "Dead"
                                },
                                {
                                    "name": "Taint Washer",
                                    "species": "Human",
                                    "type": "",
                                    "gender": "Male",
                                    "created": "2018-01-10T17:23:26.944Z",
                                    "status": "Alive"
                                }
                            ]
                        }
                    }
                ]
            },
            "locationsByIds": [
                {
                    "id": "12",
                    "name": "Cronenberg Earth",
                    "type": "Planet",
                    "dimension": "Cronenberg Dimension",
                    "residents": []
                },
                {
                    "id": "25",
                    "name": "The Menagerie",
                    "type": "Menagerie",
                    "dimension": "unknown",
                    "residents": [
                        {
                            "name": "Collector",
                            "species": "Alien",
                            "type": "Light bulb-Alien",
                            "gender": "Male",
                            "created": "2017-11-30T11:13:46.785Z",
                            "status": "Alive"
                        },
                        {
                            "name": "Chang",
                            "species": "Human",
                            "type": "",
                            "gender": "Male",
                            "created": "2018-05-22T17:43:52.543Z",
                            "status": "Alive"
                        },
                        {
                            "name": "Dr. Eleanor Arroway",
                            "species": "Human",
                            "type": "",
                            "gender": "Female",
                            "created": "2018-05-22T17:44:32.071Z",
                            "status": "Alive"
                        }
                    ]
                }
            ]
        }
    }
    """

    static let rickAndMortyQueryFailureResponse: String = """
    {
        "errors": [
            {
                "message": "Expected type Int, found 1234",
                "locations": [
                    {
                        "line": 2,
                        "column": 20
                    }
                ],
                "extensions": {
                    "code": "GRAPHQL_VALIDATION_FAILED"
                }
            },
            {
                "message": "Variable $episodeId is not defined by operation Characters.",
                "locations": [
                    {
                        "line": 39,
                        "column": 15
                    },
                    {
                        "line": 1,
                        "column": 1
                    }
                ],
                "extensions": {
                    "code": "GRAPHQL_VALIDATION_FAILED"
                }
            },
            {
                "message": "Variable locationIds is not defined by operation Characters.",
                "locations": [
                    {
                        "line": 72,
                        "column": 23
                    },
                    {
                        "line": 1,
                        "column": 1
                    }
                ],
                "extensions": {
                    "code": "GRAPHQL_VALIDATION_FAILED"
                }
            }
        ]
    }
    """

    static let rickAndMortyQueryPartialErrors = """
            {
                "data": {
                    "characters": {
                        "info": {
                            "count": 86,
                            "pages": 5,
                            "next": 2,
                            "prev": null
                        },
                        "results": [
                            {
                                "id": "1",
                                "name": "Rick Sanchez",
                                "species": "Human",
                                "type": "",
                                "gender": "Male",
                            }
                        ]
                    }
                },
                "errors": [
                    {
                        "message": "Expected type Int, found 1234",
                        "locations": [
                            {
                                "line": 2,
                                "column": 20
                            }
                        ],
                        "extensions": {
                            "code": "GRAPHQL_VALIDATION_FAILED"
                        }
                    },
                    {
                        "message": "Variable $episodeId is not defined by operation Characters.",
                        "locations": [
                            {
                                "line": 39,
                                "column": 15
                            },
                            {
                                "line": 1,
                                "column": 1
                            }
                        ],
                        "extensions": {
                            "code": "GRAPHQL_VALIDATION_FAILED"
                        }
                    },
                    {
                        "message": "Variable locationIds is not defined by operation Characters.",
                        "locations": [
                            {
                                "line": 72,
                                "column": 23
                            },
                            {
                                "line": 1,
                                "column": 1
                            }
                        ],
                        "extensions": {
                            "code": "GRAPHQL_VALIDATION_FAILED"
                        }
                    }
                ]
            }
    """
}
