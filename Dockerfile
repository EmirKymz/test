# Temel imaj olarak OpenJDK kullan
FROM openjdk:17

# Uygulama dosyasını konteynere kopyala
COPY App.java /src

# Çalışma dizinine geç
WORKDIR /usr/src/myapp

# Java dosyasını derle
RUN javac App.java

# Uygulamayı çalıştır
CMD ["java", "-cp", "/usr/src/myapp/src", "App"]
