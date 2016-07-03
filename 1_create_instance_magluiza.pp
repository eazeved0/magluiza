ec2_instance { 'Mag_Luiza_Instance1':
  ensure            => present,
  region            => 'sa-east-1',
  availability_zone => 'sa-east-1a',
  subnet	    => 'PRODUCAO-PUBLIC-1',
  image_id          => 'ami-0fb83963',
  instance_type     => 't2.medium',
  monitoring        => false,
  key_name          => 'training_protonmail',
  security_groups   => ['EAZEVEDO-INTERNAL'],
  user_data         => template('/home/ubuntu/Mag_Luiza/script.sh'),
  tags              => {
   version => 'v1',
  },
}
