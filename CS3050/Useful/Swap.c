void Swap(void *pItem1, void *pItem2, size_t itemsize) {
    void *temp = malloc(itemsize);
    if (temp == NULL) {
        exit(EXIT_FAILURE);  // Handle memory allocation failure
    }
    memcpy(temp, pItem1, itemsize);
    memcpy(pItem1, pItem2, itemsize);
    memcpy(pItem2, temp, itemsize);
    free(temp);
}