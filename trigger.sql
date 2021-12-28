-- The game_id column cannot be updated.
--checks if the column game_id in the games table was updated. If yes - raises messaage and cancels the changes.
CREATE FUNCTION game_id_changed_function() 
   RETURNS TRIGGER 
   LANGUAGE PLPGSQL
AS $$
BEGIN
    IF NEW.game_id <> OLD.game_id THEN
		 RAISE NOTICE 'The game_id can not be changed';
	END IF;
	RETURN OLD;
END;
$$;

CREATE TRIGGER game_id_changed_function
  BEFORE UPDATE
  ON public.games
  FOR EACH ROW
  EXECUTE PROCEDURE game_id_changed_function();