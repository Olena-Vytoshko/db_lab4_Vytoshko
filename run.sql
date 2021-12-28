SELECT get_count_of_games_by_status('mate') as mate, get_count_of_games_by_status('outoftime') as outoftime;

SELECT * FROM public.white_player;
CALL increase_players_rating(10);
SELECT * FROM public.white_player;

UPDATE public.games
SET game_id = 'sdfsfd';