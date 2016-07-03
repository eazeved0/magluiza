elb_loadbalancer { 'ELB-MAGLUIZA':
  ensure               => present,
  region               => 'sa-east-1',
  subnets   => ['PRODUCAO-PUBLIC-1', 'PRODUCAO-PUBLIC-2'],
  instances            => ['Mag_Luiza_Instance1', 'Mag_Luiza_Instance2'],
  security_groups      => ['EAZEVEDO-ELB'],
  listeners            => [{
    protocol           => 'HTTP',
    load_balancer_port => 9000,
    instance_protocol  => 'HTTP',
    instance_port      => 8000}],
  tags                 =>{
    version => 'v1',
  },
}
