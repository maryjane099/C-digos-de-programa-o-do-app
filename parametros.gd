extends Node

const img_paquimetro_x0 = 200

const cur_min_x = 0.75 # trocar
const cur_max_x = 655 # trocar
const cur_min_x_002 = 245
const cur_max_x_002 = 928

# Fundo de escala do paquimetro
const F = 100.0
const F_002 = 100.0

const cur_dim_mm = 39.0
const cur_num_div = 20.0 # 20.0 Trocar
const cur_dim_mm_002 = 49.0
const cur_num_div_002 = 50.0

const cur_dx_mm = cur_dim_mm / cur_num_div
const cur_dx_mm_002 = cur_dim_mm_002 / cur_num_div_002

const pq_dim_px = cur_max_x
const pq_num_div = F
const pq_dx_mm = F / pq_num_div

const pq_dim_px_002 = cur_max_x_002
const pq_num_div_002 = F_002
const pq_dx_mm_002 = F_002 / pq_num_div_002

const cur_res = 0.05 # 0,05 trocar
const cur_res_002 = 0.02
