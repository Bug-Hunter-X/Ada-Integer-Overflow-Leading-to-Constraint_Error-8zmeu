```ada
function Add_One (X : Integer) return Integer is
begin
  return X + 1;
end Add_One;

procedure Example is
   Result : Integer;
begin
   Result := Add_One(5);
   -- The following will raise Constraint_Error if Result is too large
   Result := Result + Integer'Last;
   Put_Line("Result is: " & Integer'Image(Result));
end Example;
```