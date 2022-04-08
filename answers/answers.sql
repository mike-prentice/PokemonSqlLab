Part 2
mysql> SELECT * FROM types;
+----+----------+
| id | name     |
+----+----------+
|  1 | Normal   |
|  2 | Water    |
|  3 | Grass    |
|  4 | Rock     |
|  5 | Fire     |
|  6 | Ground   |
|  7 | Poison   |
|  8 | Bug      |
|  9 | Electric |
| 10 | Dragon   |
| 11 | Steel    |
| 12 | Dark     |
| 13 | Fighting |
| 14 | Psychic  |
| 15 | Ghost    |
| 16 | Fairy    |
| 17 | Ice      |
| 18 | Flying   |
+----+----------+
SELECT * FROM pokemon WHERE Id = 45 (Eevee is Pokemon is Id 45.)
There are 18 primary types
SELECT * FROM pokemons WHERE secondary_type != 0; 316 pokemon with secondary types.

Part 3
mysql> SELECT  *  FROM pokemons  JOIN types  ON   pokemons.primary_type = types.id;
mysql> SELECT p.name, t.name  FROM pokemons p  JOIN types t  ON t.id = p.secondary_type WHERE p.name = 'Rufflet';
+---------+--------+
| name    | name   |
+---------+--------+
| Rufflet | Flying |
+---------+--------+
mysql> SELECT p.name FROM pokemon_trainer pt JOIN pokemons p ON pokemon_id = p.id WHERE pt.trainerID = 303;
+-----------+
| name      |
+-----------+
| Wailord   |
| Vileplume |
+-----------+

mysql> SELECT p.name FROM pokemons p JOIN types t ON p.secondary_type = t.id WHERE t.name = 'poison';
+------------+
| name       |
+------------+
| Vileplume  |
| Weepinbell |
| Gloom      |
| Ivysaur    |
| Tentacruel |
| Bellsprout |
| Victreebel |
| Bulbasaur  |
| Venusaur   |
| Roselia    |
| Oddish     |
| Gastly     |
| Haunter    |
| Gengar     |
| Beedrill   |
| Roserade   |
| Scolipede  |
| Venonat    |
| Dustox     |
| Ariados    |
| Qwilfish   |
| Budew      |
| Tentacool  |
| Venomoth   |
| Weedle     |
| Kakuna     |
| Spinarak   |
| Whirlipede |
| Venipede   |
| Amoonguss  |
| Foongus    |
+------------+
31 rows in set (0.01 sec)
mysql> SELECT t.name, count(p.primary_type) FROM types t JOIN pokemons p ON p.primary_type = t.id Group BY p.primary_type;
+----------+-----------------------+
| name     | count(p.primary_type) |
+----------+-----------------------+
| Normal   |                    90 |
| Water    |                    95 |
| Grass    |                    59 |
| Rock     |                    38 |
| Fire     |                    38 |
| Ground   |                    29 |
| Poison   |                    27 |
| Bug      |                    61 |
| Electric |                    35 |
| Dragon   |                    22 |
| Steel    |                    19 |
| Dark     |                    24 |
| Fighting |                    25 |
| Psychic  |                    38 |
| Ghost    |                    19 |
| Fairy    |                    14 |
| Ice      |                    22 |
| Flying   |                     1 |
+----------+-----------------------+
18 rows in set (0.03 sec)
mysql> SELECT count(pt.pokelevel), pt.trainerID FROM pokemon_trainer pt WHERE pt.pokelevel = 100 GROUP BY pt.trainerID;
+---------------------+-----------+
| count(pt.pokelevel) | trainerID |
+---------------------+-----------+
|                   6 |      1258 |
|                   6 |      1259 |
|                   6 |      1260 |
|                   6 |      1261 |
|                   6 |      1262 |
|                   6 |      1263 |
|                   6 |      1264 |
|                   6 |      1265 |
|                   6 |      1266 |
|                   6 |      1267 |
|                   6 |      1268 |
|                   6 |      1269 |
|                   6 |      1270 |
|                   6 |      1271 |
|                   6 |      1272 |
|                   6 |      1273 |
|                   6 |      1280 |
|                   5 |      1281 |
|                   6 |      1284 |
|                   6 |      1285 |
|                   6 |      1312 |
|                   6 |      1317 |
|                   6 |      1320 |
|                   6 |      1325 |
|                   1 |      1335 |
|                   2 |      1351 |
|                   6 |      1567 |
|                   6 |      1728 |
|                   6 |      2250 |
|                   6 |      2251 |
|                   5 |      2252 |
|                   5 |      2253 |
|                   6 |      2254 |
|                   6 |      2255 |
|                   6 |      2256 |
|                   6 |      2257 |
|                   6 |      2258 |
|                   6 |      2259 |
|                   6 |      2458 |
|                   5 |      2459 |
|                   6 |      2460 |
|                   6 |      2461 |
|                   6 |      2462 |
|                   6 |      2463 |
|                   6 |      2464 |
|                   6 |      2465 |
|                   6 |      2470 |
|                   6 |      2471 |
|                   2 |      2542 |
|                   2 |      2550 |
|                   1 |      2783 |
|                   6 |      3043 |
|                   6 |      3045 |
|                   2 |      3080 |
|                   1 |      3420 |
|                   1 |      3421 |
|                   6 |      4084 |
|                   6 |      4085 |
|                   6 |      4086 |
|                   6 |      4087 |
|                   6 |      4088 |
|                   6 |      4089 |
|                   6 |      4090 |
|                   6 |      4091 |
|                   6 |      4092 |
|                   6 |      4093 |
|                   6 |      4094 |
|                   6 |      4095 |
|                   6 |      4096 |
|                   6 |      4097 |
|                   6 |      4098 |
|                   6 |      4099 |
|                   6 |      4106 |
|                   5 |      4107 |
|                   6 |      4110 |
|                   6 |      4111 |
|                   6 |      4138 |
|                   6 |      4143 |
|                   6 |      4146 |
|                   6 |      4151 |
|                   1 |      4161 |
|                   2 |      4177 |
|                   6 |      4393 |
|                   6 |      4554 |
|                   6 |      5076 |
|                   6 |      5077 |
|                   5 |      5078 |
|                   5 |      5079 |
|                   6 |      5080 |
|                   6 |      5081 |
|                   6 |      5082 |
|                   6 |      5083 |
|                   6 |      5084 |
|                   6 |      5085 |
|                   6 |      5284 |
|                   5 |      5285 |
|                   6 |      5286 |
|                   6 |      5287 |
|                   6 |      5288 |
|                   6 |      5289 |
|                   6 |      5290 |
|                   6 |      5291 |
|                   6 |      5296 |
|                   6 |      5297 |
|                   2 |      5368 |
|                   2 |      5376 |
|                   1 |      5609 |
|                   6 |      5869 |
|                   6 |      5871 |
|                   2 |      5906 |
|                   1 |      6246 |
|                   1 |      6247 |
|                   6 |      6805 |
|                   6 |      6806 |
|                   6 |      7365 |
|                   6 |      7374 |
|                   1 |      7565 |
|                   1 |      7706 |
|                   6 |      7827 |
|                   6 |      7828 |
|                   6 |      8043 |
|                   6 |      8044 |
|                   2 |      8053 |
|                   5 |      8280 |
|                   5 |      8281 |
|                   6 |      8282 |
|                   6 |      8283 |
|                   6 |      8284 |
|                   6 |      8285 |
|                   6 |      8286 |
|                   6 |      8287 |
|                   1 |      8391 |
|                   1 |      8751 |
|                   1 |      8752 |
|                   1 |      8762 |
|                   1 |      8763 |
|                   6 |      9253 |
|                   6 |      9261 |
|                   6 |      9320 |
|                   6 |      9323 |
|                   6 |      9324 |
|                   2 |      9343 |
|                   1 |      9449 |
|                   6 |      9472 |
|                   6 |      9473 |
|                   6 |      9474 |
|                   6 |      9475 |
|                   5 |      9476 |
|                   6 |      9477 |
|                   6 |      9478 |
|                   6 |      9479 |
|                   2 |      9558 |
|                   1 |      9559 |
|                   2 |      9625 |
|                   1 |      9820 |
|                   6 |      9888 |
|                   6 |      9889 |
|                   6 |      9890 |
|                   6 |      9891 |
|                   6 |      9892 |
|                   6 |      9893 |
|                   6 |      9894 |
|                   6 |      9895 |
|                   6 |      9898 |
|                   6 |      9899 |
|                   2 |      9932 |
|                   1 |     10077 |
|                   2 |     10114 |
|                   2 |     10115 |
|                   5 |     10165 |
|                   6 |     10166 |
|                   2 |     10321 |
|                   6 |     10343 |
|                   6 |     10345 |
|                   6 |     10347 |
|                   6 |     10348 |
|                   6 |     10349 |
|                   6 |     10351 |
|                   6 |     10352 |
|                   6 |     10354 |
|                   6 |     10355 |
|                   6 |     10356 |
|                   6 |     10357 |
|                   6 |     10358 |
|                   2 |     10535 |
|                   1 |     10567 |
|                   6 |     10854 |
|                   6 |     10856 |
|                   1 |     11248 |
|                   2 |     11317 |
|                   6 |     11557 |
|                   2 |     11569 |
|                   2 |     11602 |
|                   2 |     11696 |
+---------------------+-----------+
194 rows in set (0.04 sec)

mysql> SELECT count(*) FROM pokemons p JOIN pokemon_trainer pt ON p.id = pt.pokemon_id GROUP BY pt.pokemon_id HAVING COUNT(trainerID)=1;
+----------+
| count(*) |
+----------+
|        1 |
|        1 |
|        1 |
|        1 |
|        1 |
|        1 |
|        1 |
|        1 |
|        1 |
|        1 |
|        1 |
|        1 |
|        1 |
+----------+
13 rows in set (0.08 sec)

Part 4