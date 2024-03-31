
# Program Dependence Graph (PDG) Compiler Pass

This project implements a custom LLVM compiler pass to analyze a Python application and generate a program dependence graph (PDG) at the function level. Additionally, it partitions the program into secure and non-secure partitions based on the analysis results.

## Prerequisites

Before running the compiler pass, ensure you have the following dependencies installed:

- LLVM compiler infrastructure
- Python 3
- if you are Linux User , please make sure to build an python environment first then follow the below step-

## Installation

1. Clone the repository:

   ```bash
   git clone git@github.com:satyadev2/Compiler-Project.git
   ```
2. Compile the bash script :

   ```bash

   make sure you have executable permissions,
   chmod +x script.py  // to give executable permission
   ./script.sh

   ```

## Compiler Pass Details

The compiler pass performs the following steps:

1. Analyzes the Python application to generate the program dependence graph (PDG) at the function level.
2. Partitions the program into secure and non-secure partitions based on the analysis results.
3. Prints the ID of the desired function, represented by numbers.

## Contributing

Contributions to this project are welcome! If you would like to contribute, please follow these steps:

1. Fork the repository.
2. Create a new branch for your feature (`git checkout -b feature-name`).
3. Commit your changes (`git commit -am 'Add new feature'`).
4. Push to the branch (`git push origin feature-name`).
5. Create a new pull request.

## License

This project is licensed under the [MIT License](LICENSE).
