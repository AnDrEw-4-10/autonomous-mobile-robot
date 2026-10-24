% SEND THE PATH TO ESP32 OVER UDP
        esp32IP = '192.168.1.250';
        esp32Port = 50002;
        u = udpport("Datagram", "IPV4");

        % fprintf('\nSending path to ESP32...\n');
        cfd = typecast(int8([0,0,0,90,0,90,0,0,60,0,60,0,60,0,0,0,0,0,0,0]),'uint8'); % rand(1,20)*100);
        write(u, cfd, "uint8", esp32IP, esp32Port);
        fprintf('Sent: %s\n', cfd);
        pause(1);
        %clear u;   % closing connection
 pause(1);