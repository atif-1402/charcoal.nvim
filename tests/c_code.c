#include <stdio.h>
#include <string.h>
#include <stdint.h>
#include <stdbool.h>

#define sum_from_l_to_r(sum, l, r)           \
        do                                   \
        {                                    \
                *(sum) = 0;                  \
                for (int i = l; i <= r; i++) \
                {                            \
                        *(sum) += i;         \
                }                            \
        } while (0)

#define MATH_CONSTANT_PI 3.14159265358979323

typedef int i32;
typedef struct sample_struct
{
        int x, y;
} sample_struct;

bool string_equal_in_range(const char *a, const char *b, int length)
{
        for (int i = 0; i < length; i++)
        {
                if (a[i] != b[i])
                {
                        return false;
                }
        }
        return true;
}

/// this is a comment to test the color-scheme.
/// returns true if string contains substring
/// returns false if string does not contain substring
bool string_has_substring(const char *string, const char *sub_string)
{
        int n = strlen(string);
        int k = strlen(sub_string);

        if (n < k)
        {
                return false;
        }
        for (int i = 0; i < n - k + 1; i++)
        {
                if (string_equal_in_range(&string[i], sub_string, k))
                {
                        return true;
                }
        }

        return false;
}

int main()
{
        int x = 7;
        sum_from_l_to_r(&x, 1, 100);

        int y = 10;
        uintptr_t z = (uintptr_t)&y;
        *((int*)z) = 20;

        const char *a = "something";
        const char *b = "think";

        printf("%d %d %s\n", x, y, string_has_substring(a, b) ? "true" : "false");
        return 0;
}
