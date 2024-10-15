def main():
    print("Hello from benches!")


if __name__ == "__main__":
    main()

import torch
print(torch.cuda.is_available())