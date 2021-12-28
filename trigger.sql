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