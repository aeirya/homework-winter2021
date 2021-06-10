/*
    pre-palindrome
*/

#include <stdio.h>
#include <stdlib.h>

int str_len(char *str)
{
    int count = 0;
    while (str[count] > 0)
        count++;
    return count;
}

void computeLPSArray(char *pat, int M, int *lps)
{
    // length of the previous longest prefix suffix
    int len = 0;

    lps[0] = 0; // lps[0] is always 0

    // the loop calculates lps[i] for i = 1 to M-1
    int i = 1;
    while (i < M)
    {
        if (pat[i] == pat[len])
        {
            len++;
            lps[i] = len;
            i++;
        }
        else // (pat[i] != pat[len])
        {
            // This is tricky. Consider the example.
            // AAACAAAA and i = 7. The idea is similar
            // to search step.
            if (len != 0)
            {
                len = lps[len - 1];

                // Also, note that we do not increment
                // i here
            }
            else // if (len == 0)
            {
                lps[i] = 0;
                i++;
            }
        }
    }
}

// Prints first occurrence of txt[] in pat[]
int KMPSearch(char *pat, char *txt)
{
    int M = str_len(pat);
    int N = str_len(txt);

    // create lps[] that will hold the longest prefix suffix
    // values for pattern
    int lps[M];

    // Preprocess the pattern (calculate lps[] array)
    computeLPSArray(pat, M, lps);

    int i = 0; // index for txt[]
    int j = 0; // index for pat[]
    int max = 0;
    while (i < N)
    {
        if (pat[j] == txt[i])
        {
            j++;
            i++;
        }
        if (j > max)
        {
            max = j;
        }

        if (j == M)
        {
            return M;
        }
        // mismatch after j matches
        else if (i < N && pat[j] != txt[i])
        {
            // Do not match lps[0..lps[j-1]] characters,
            // they will match anyway
            if (i != N - 1)
                max = 0;
            if (j != 0)
                j = lps[j - 1];
            else
                i = i + 1;
        }
    }
    return max;
}

char *reverse(char *str)
{
    int len = str_len(str);
    char *rev = (char *)malloc(len * sizeof(char));
    for (int i = 0; i < len; ++i)
        rev[i] = str[len - i - 1];
    return rev;
}

int main()
{
    char str[100000], *rev;
    scanf("%s", str);
    rev = reverse(str);
    int max = KMPSearch(str, rev);
    printf("%d\n", max);
    return 0;
}

/*
    aeirya mohammadi
*/