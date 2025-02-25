#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <SDL2/SDL.h>

#define ROWS 50
#define COLS 50
#define CELL_SIZE 10
#define WINDOW_WIDTH (COLS * CELL_SIZE)
#define WINDOW_HEIGHT (ROWS * CELL_SIZE)
#define ITERATIONS 1000   // Total generations to simulate
#define DELAY_MS 100      // Delay between generations in milliseconds

// Initialize the grid with random alive (1) or dead (0) cells.
void initialize_grid(int grid[ROWS][COLS]) {
    for (int i = 0; i < ROWS; i++) {
        for (int j = 0; j < COLS; j++) {
            grid[i][j] = rand() % 2;
        }
    }
}

// Count the number of alive neighbors around cell (row, col).
int count_neighbors(int grid[ROWS][COLS], int row, int col) {
    int count = 0;
    for (int i = -1; i <= 1; i++) {
        for (int j = -1; j <= 1; j++) {
            if (i == 0 && j == 0)
                continue; // Skip the cell itself
            int new_row = row + i;
            int new_col = col + j;
            if (new_row >= 0 && new_row < ROWS && new_col >= 0 && new_col < COLS) {
                count += grid[new_row][new_col];
            }
        }
    }
    return count;
}

// Update the grid based on the rules of Conway's Game of Life.
void update_grid(int grid[ROWS][COLS]) {
    int new_grid[ROWS][COLS] = {0};

    for (int i = 0; i < ROWS; i++) {
        for (int j = 0; j < COLS; j++) {
            int neighbors = count_neighbors(grid, i, j);
            if (grid[i][j] == 1) { // Live cell.
                if (neighbors == 2 || neighbors == 3)
                    new_grid[i][j] = 1; // Lives on.
                else
                    new_grid[i][j] = 0; // Dies.
            } else { // Dead cell.
                if (neighbors == 3)
                    new_grid[i][j] = 1; // Becomes alive.
            }
        }
    }
    // Copy new_grid back to grid.
    for (int i = 0; i < ROWS; i++) {
        for (int j = 0; j < COLS; j++) {
            grid[i][j] = new_grid[i][j];
        }
    }
}

// Render the grid to the SDL window.
void render_grid(SDL_Renderer *renderer, int grid[ROWS][COLS]) {
    // Clear the screen with a black background.
    SDL_SetRenderDrawColor(renderer, 0, 0, 0, 255);
    SDL_RenderClear(renderer);

    // Set the draw color for live cells (white).
    SDL_SetRenderDrawColor(renderer, 255, 255, 255, 255);
    SDL_Rect cell;
    cell.w = CELL_SIZE;
    cell.h = CELL_SIZE;

    for (int i = 0; i < ROWS; i++) {
        for (int j = 0; j < COLS; j++) {
            if (grid[i][j] == 1) {
                cell.x = j * CELL_SIZE;
                cell.y = i * CELL_SIZE;
                SDL_RenderFillRect(renderer, &cell);
            }
        }
    }
    SDL_RenderPresent(renderer);
}

int main(void) {
    int grid[ROWS][COLS];
    srand(time(NULL));
    initialize_grid(grid);

    if (SDL_Init(SDL_INIT_VIDEO) != 0) {
        fprintf(stderr, "SDL_Init Error: %s\n", SDL_GetError());
        return 1;
    }

    SDL_Window *window = SDL_CreateWindow("Conway's Game of Life",
                                          SDL_WINDOWPOS_CENTERED, SDL_WINDOWPOS_CENTERED,
                                          WINDOW_WIDTH, WINDOW_HEIGHT,
                                          SDL_WINDOW_SHOWN);
    if (!window) {
        fprintf(stderr, "SDL_CreateWindow Error: %s\n", SDL_GetError());
        SDL_Quit();
        return 1;
    }

    SDL_Renderer *renderer = SDL_CreateRenderer(window, -1,
                           SDL_RENDERER_ACCELERATED | SDL_RENDERER_PRESENTVSYNC);
    if (!renderer) {
        fprintf(stderr, "SDL_CreateRenderer Error: %s\n", SDL_GetError());
        SDL_DestroyWindow(window);
        SDL_Quit();
        return 1;
    }

    int running = 1;
    SDL_Event event;
    int iteration = 0;

    while (running && iteration < ITERATIONS) {
        // Process events.
        while (SDL_PollEvent(&event)) {
            if (event.type == SDL_QUIT) {
                running = 0;
            }
        }

        // Render current state.
        render_grid(renderer, grid);

        // Update grid for next generation.
        update_grid(grid);

        SDL_Delay(DELAY_MS);
        iteration++;
    }

    SDL_DestroyRenderer(renderer);
    SDL_DestroyWindow(window);
    SDL_Quit();

    return 0;
}
