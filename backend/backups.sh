current_date=$(date '+%m%d')

mv /home/ubuntu/vns/backend/vns-1.0-SNAPSHOT.jar /home/ubuntu/vns/backend/vns-1.0-SNAPSHOT-${current_date}.jar

mv /home/ubuntu/vns/backend/vns-1.0-SNAPSHOT-${current_date}.jar /home/ubuntu/vns/backend/historyjar
