```ada
function Add_One (X : Integer) return Integer is
begin
  -- Check for potential overflow before adding 1
  if X = Integer'Last then
    raise Constraint_Error;
  else
    return X + 1;
  end if;
end Add_One;

procedure Example is
   Result : Integer;
begin
   Result := Add_One(5);
   -- Safer alternative using a larger data type if appropriate
   --Result := Result + Integer'Last;  -- This is the problematic line
   -- Replace the above line with the following for better handling of potential overflow:

   -- Use a data type with a wider range to prevent overflow
   subtype Extended_Integer is Long_Long_Integer;
   Result_Extended : Extended_Integer := Extended_Integer(Result) + Extended_Integer(Integer'Last);
   Put_Line("Result is: " & Extended_Integer'Image(Result_Extended));
end Example;
```