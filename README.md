##Config flavor
Please run cmd:
##    flutter run -t "Đường dẫn tới file main_dev.dart trong project" --flavor "Tên flavor config ở android app".

## Using libs parse json auto: 
## 1. dev_dependencies:
        build_runner: ^1.9.0
        json_serializable: ^3.3.0
  
## 2. dependencies: 
        json_annotation: ^3.0.1
    
## Running the code generation utility:
    + One-time code generation: "flutter pub run build_runner build"
    + Generating code continuously: "flutter pub run build_runner watch"
  