WITH song_play_union AS (
  SELECT
    user_id,
    song_id,
    SUM(song_plays) AS song_plays
  FROM songs_history
  GROUP BY 1,2
  UNION ALL
  SELECT
    user_id,
    song_id,
    COUNT(*) AS song_plays
  FROM songs_weekly
  WHERE listen_time < '2022-08-05'
  GROUP BY 1,2
)

SELECT
  user_id,
  song_id,
  SUM(song_plays) AS song_plays
FROM song_play_union
GROUP BY 1,2
ORDER BY song_plays DESC