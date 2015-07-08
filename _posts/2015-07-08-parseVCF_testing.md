---
layout:    post
time:      2015-07-08
title:     Normalising Short Tandem Repeat Units
---

## Circular permutations


    def circular_permuted1(seq):
        all_possible = []
        for i in range(len(seq)):
            permuted_seq = (seq + seq)[i:i+len(seq)]
            all_possible.append(permuted_seq)
        return(all_possible)


    from collections import deque
    
    def circular_permuted2(seq):
        all_possible = []
        d = deque(a)
        for i in range(len(a)):
            d.rotate()
            all_possible.append(''.join(list(d)))
        return(all_possible)


    import toolz
    
    def circular_permuted3(seq):
        all_possible = []
        for permuted_seq in toolz.sliding_window(len(seq), seq+seq[:-1]):
            all_possible.append(''.join(permuted_seq))
        return(all_possible)


    def circular_permuted4(seq):
        n = len(seq)
        return([''.join([seq[i - j] for i in range(n)]) for j in range(n)])


    def circular_permuted5(seq):
        n = len(seq)
        return([(seq + seq)[i:i+len(seq)] for i in range(n)])


    def circular_permuted6(x):
        return([x[i:]+x[:i] for i in range(len(x))])


    a = "ATCG"


    %%timeit -r10
    circular_permuted1(a)

    100000 loops, best of 10: 2.09 µs per loop



    %%timeit -r10
    circular_permuted2(a)

    100000 loops, best of 10: 3.62 µs per loop



    %%timeit -r10
    circular_permuted3(a)

    The slowest run took 4.22 times longer than the fastest. This could mean that an intermediate result is being cached 
    100000 loops, best of 10: 3.65 µs per loop



    %%timeit -r10
    circular_permuted4(a)

    100000 loops, best of 10: 5.8 µs per loop



    %%timeit -r10
    circular_permuted5(a)

    100000 loops, best of 10: 2.01 µs per loop



    %%timeit -r10
    circular_permuted6(a) # Winner!

    1000000 loops, best of 10: 1.87 µs per loop


## Reverse complement


    


    


    from Bio.Seq import Seq
    from Bio.Alphabet import generic_dna
    
    def self_and_rev_complement1(in_dna):
        all_possible = [in_dna]
        
        # Get reverse complement
        dna = Seq(in_dna, generic_dna)
        rev_complement = str(dna.reverse_complement())
        all_possible.append(rev_complement)
        return(all_possible)
    
    from skbio.sequence import DNASequence
    
    def self_and_rev_complement2(in_dna):
        all_possible = [in_dna]
        
        # Get reverse complement
        dna = DNASequence(in_dna)
        rev_complement = str(dna.reverse_complement())
        all_possible.append(rev_complement)
        return(all_possible)


    %%timeit -r10
    self_and_rev_complement1(a)

    The slowest run took 6.29 times longer than the fastest. This could mean that an intermediate result is being cached 
    100000 loops, best of 10: 5.99 µs per loop



    %%timeit -r10
    self_and_rev_complement2(a)

    The slowest run took 4.44 times longer than the fastest. This could mean that an intermediate result is being cached 
    100000 loops, best of 10: 10.7 µs per loop



    self_and_rev_complement2(a)




    ['ATCG', 'CGAT']



## Putting it together, circular permutations of the original and reverse complement


    from Bio.Seq import Seq
    from Bio.Alphabet import generic_dna
    
    def normalise_str(in_dna):
        """Find all possible eqivalent STR sequences. 
        And return the first alphabetically.
        
        For example, TA = AT. But would return AT.
        """
        all_possible = [in_dna]
        
        # Get reverse complement
        dna = Seq(in_dna, generic_dna)
        rev_complement = str(dna.reverse_complement())
        all_possible.append(rev_complement)
        
        # Permute
        for seq in [in_dna, rev_complement]:
            for permuted_seq in circular_permuted1(seq): # Switch to faster permutation (6)
                all_possible.append(permuted_seq)
    
        # Sort and take the first
        all_possible.sort()
        return(all_possible[0])


    from skbio.sequence import DNASequence
    
    def normalise_str2(in_dna):
        """Find all possible eqivalent STR sequences. 
        And return the first alphabetically.
        
        For example, TA = AT. But would return AT.
        """
        all_possible = [in_dna]
        
        # Get reverse complement
        dna = DNASequence(in_dna)
        rev_complement = str(dna.reverse_complement())
        all_possible.append(rev_complement)
        
        # Permute
        for seq in [in_dna, rev_complement]:
            for permuted_seq in circular_permuted1(seq): # Switch to faster permutation (6)
                all_possible.append(permuted_seq)
    
        # Sort and take the first
        all_possible.sort()
        return(all_possible[0])


    %%timeit -r10
    normalise_str(a)

    100000 loops, best of 10: 12.9 µs per loop



    %%timeit -r10
    normalise_str2(a)

    10000 loops, best of 10: 17.4 µs per loop



    
