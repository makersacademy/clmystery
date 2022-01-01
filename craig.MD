### Searching for multiple terms
To search for multiple terms in the **vehicles** file, I used used the following:
- Search for a term, but use the -A and -B flags to include prior and trailing lines
- Pipe the above result back into `grep` to search for the next terms.

This resulted in the following:

```egrep -A 4 'License Plate L337.*9$' mystery/vehicles | grep -A 3 -B 1 'Make: Honda' | grep -A 2 -B 2 'Color: Blue' | grep -B 4 'Height: 6' > suspects.txt```
 
 which yielded:

```
License Plate L337QE9
Make: Honda
Color: Blue
Owner: Erika Owens
Height: 6'5"
--
License Plate L337DV9
Make: Honda
Color: Blue
Owner: Joe Germuska
Height: 6'2"
--
License Plate L3375A9
Make: Honda
Color: Blue
Owner: Jeremy Bowers
Height: 6'1"
--
License Plate L337WR9
Make: Honda
Color: Blue
Owner: Jacqui Maher
Height: 6'2"
```

### Finding a particular line
I was able to accomplish this by using a combination of `head` and `tail`

E.g to find what is on line 179 in the file **Buckingham_Place**:

```head -179 mystery/streets/Buckingham_Place | tail -1```

E.g. Get the first 179 lines then get the last line of that.