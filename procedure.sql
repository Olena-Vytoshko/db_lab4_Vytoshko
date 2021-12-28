CREATE OR REPLACE PROCEDURE increase_players_rating(delta int)
LANGUAGE plpgsql
AS $$
BEGIN
	update black_player
	set black_player_rating = black_player_rating + delta;
	update white_player
	set white_player_rating = white_player_rating + delta;
END; 
$$;