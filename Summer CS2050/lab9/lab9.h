#ifndef _LAB9_H
#define _LAB9_H

// Symbolic Constants
#define MAXSTRING 64

// Types
struct _Computer
{
	char	sCompany[MAXSTRING];	// Manufacturing company (e.g., Dell)
	char	sModel[MAXSTRING];		// (e.g., "XPS13")
	float	fltClockSpeed;			// Clock speed in HZ
	long	iDisk;					// Disk size in bytes
	int		iMemory;				// Memory size in bytes
};
typedef struct _Computer Computer;

// Prototypes

void * makeArray(int arraySize, int elementSize);
int getSize(void *array);
void freeArray(void *array);

// O(log(n))
int searchComputersByDiskSize(Computer *array, Computer *query);
// O(log(n))
int searchComputersByCompanyAndModel(Computer *array, Computer *query);

// O(1)
int compareComputersByDiskSize(Computer *a, Computer *b);
// O(1)
int compareComputersByCompanyAndModel(Computer *a, Computer *b);

#endif
