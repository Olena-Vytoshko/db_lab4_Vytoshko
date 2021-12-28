CREATE OR REPLACE FUNCTION get_count_of_games_by_status(status status_game_type)  
RETURNS int  
language plpgsql  
AS  
$$  
DECLARE  
 game_count int;  
BEGIN  
   SELECT COUNT(*)   
   INTO game_count  
   FROM public.games  
   WHERE game_status = status;
   RETURN game_count;  
END;  
$$;