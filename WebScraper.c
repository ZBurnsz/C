#include <stdio.h>
#include <curl/curl.h>
#include <string.h>

// Callback function to write received data into a buffer
size_t WriteCallback(void *contents, size_t size, size_t nmemb, void *userp) {
    size_t realsize = size * nmemb;
    char *buffer = (char *)userp;
    strcat(buffer, (char *)contents);
    return realsize;
}

int main(void) {
    CURL *curl;
    CURLcode res;

    curl_global_init(CURL_GLOBAL_ALL);

    curl = curl_easy_init();
    if (curl) {
        // Set the URL of the Reddit page you want to scrape
        curl_easy_setopt(curl, CURLOPT_URL, "https://www.reddit.com/r/conspiracy/");

        // Create a buffer to store the page content
        char buffer[10000]; // Adjust the size as needed

        // Set the callback function to handle received data
        curl_easy_setopt(curl, CURLOPT_WRITEFUNCTION, WriteCallback);
        curl_easy_setopt(curl, CURLOPT_WRITEDATA, buffer);

        res = curl_easy_perform(curl);

        if (res != CURLE_OK) {
            fprintf(stderr, "Request failed: %s\n", curl_easy_strerror(res));
        } else {
            // Now, you can parse the HTML content in the 'buffer' to extract the top 5 users.
            // You can use HTML parsing libraries like libxml2 or use string manipulation to extract the relevant information.
            // Parsing HTML manually can be complex, and it's recommended to use a proper HTML parsing library.

            // Here's a simplified example to find and print the first 5 user mentions:
            char *token = strtok(buffer, " ");
            int userCount = 0;
            while (token != NULL && userCount < 5) {
                if (strstr(token, "u/") != NULL) {
                    printf("User: %s\n", token);
                    userCount++;
                }
                token = strtok(NULL, " ");
            }
        }
    }

    curl_easy_cleanup(curl);
    curl_global_cleanup();

    return 0;
}
