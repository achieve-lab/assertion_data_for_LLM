`timescale 1ns/1ps

module ibex_controller_bench();

reg irq_pending_i;
reg fetch_enable_i;
reg csr_mtip_i;
reg [31:0] lsu_addr_last_i;
reg stall_multdiv_i;
reg csr_pipe_flush_i;
reg csr_msip_i;
reg instr_valid_i;
reg dret_insn_i;
reg [31:0] pc_id_i;
reg stall_lsu_i;
reg ebrk_insn_i;
reg jump_set_i;
reg debug_single_step_i;
reg wfi_insn_i;
reg [15:0] instr_compressed_i;
reg instr_is_compressed_i;
reg csr_meip_i;
reg illegal_insn_i;
reg stall_jump_i;
reg instr_fetch_err_i;
reg rst_ni;
reg [31:0] instr_i;
reg irq_nm_i;
reg debug_ebreakm_i;
reg branch_set_i;
reg mret_insn_i;
reg stall_branch_i;
reg debug_ebreaku_i;
reg [1:0] priv_mode_i;
reg csr_mstatus_tw_i;
reg store_err_i;
reg clk_i;
reg ecall_insn_i;
reg csr_mstatus_mie_i;
reg [14:0] csr_mfip_i;
reg load_err_i;
reg debug_req_i;

wire id_in_ready_o;
wire pc_set_o;
wire instr_valid_clear_o;
wire csr_save_id_o;
wire [31:0] csr_mtval_o;
wire [2:0] debug_cause_o;
wire [5:0] exc_cause_o;
wire perf_jump_o;
wire csr_restore_mret_id_o;
wire perf_tbranch_o;
wire csr_save_if_o;
wire instr_req_o;
wire csr_restore_dret_id_o;
wire debug_csr_save_o;
wire [2:0] pc_mux_o;
wire debug_mode_o;
wire ctrl_busy_o;
wire csr_save_cause_o;
wire [1:0] exc_pc_mux_o;

ibex_controller ibex_controller_ (
	.irq_pending_i(irq_pending_i),
	.fetch_enable_i(fetch_enable_i),
	.csr_mtip_i(csr_mtip_i),
	.lsu_addr_last_i(lsu_addr_last_i),
	.stall_multdiv_i(stall_multdiv_i),
	.csr_pipe_flush_i(csr_pipe_flush_i),
	.csr_msip_i(csr_msip_i),
	.instr_valid_i(instr_valid_i),
	.dret_insn_i(dret_insn_i),
	.pc_id_i(pc_id_i),
	.stall_lsu_i(stall_lsu_i),
	.ebrk_insn_i(ebrk_insn_i),
	.jump_set_i(jump_set_i),
	.debug_single_step_i(debug_single_step_i),
	.wfi_insn_i(wfi_insn_i),
	.instr_compressed_i(instr_compressed_i),
	.instr_is_compressed_i(instr_is_compressed_i),
	.csr_meip_i(csr_meip_i),
	.illegal_insn_i(illegal_insn_i),
	.stall_jump_i(stall_jump_i),
	.instr_fetch_err_i(instr_fetch_err_i),
	.rst_ni(rst_ni),
	.instr_i(instr_i),
	.irq_nm_i(irq_nm_i),
	.debug_ebreakm_i(debug_ebreakm_i),
	.branch_set_i(branch_set_i),
	.mret_insn_i(mret_insn_i),
	.stall_branch_i(stall_branch_i),
	.debug_ebreaku_i(debug_ebreaku_i),
	.priv_mode_i(priv_mode_i),
	.csr_mstatus_tw_i(csr_mstatus_tw_i),
	.store_err_i(store_err_i),
	.clk_i(clk_i),
	.ecall_insn_i(ecall_insn_i),
	.csr_mstatus_mie_i(csr_mstatus_mie_i),
	.csr_mfip_i(csr_mfip_i),
	.load_err_i(load_err_i),
	.debug_req_i(debug_req_i),
	.id_in_ready_o(id_in_ready_o),
	.pc_set_o(pc_set_o),
	.instr_valid_clear_o(instr_valid_clear_o),
	.csr_save_id_o(csr_save_id_o),
	.csr_mtval_o(csr_mtval_o),
	.debug_cause_o(debug_cause_o),
	.exc_cause_o(exc_cause_o),
	.perf_jump_o(perf_jump_o),
	.csr_restore_mret_id_o(csr_restore_mret_id_o),
	.perf_tbranch_o(perf_tbranch_o),
	.csr_save_if_o(csr_save_if_o),
	.instr_req_o(instr_req_o),
	.csr_restore_dret_id_o(csr_restore_dret_id_o),
	.debug_csr_save_o(debug_csr_save_o),
	.pc_mux_o(pc_mux_o),
	.debug_mode_o(debug_mode_o),
	.ctrl_busy_o(ctrl_busy_o),
	.csr_save_cause_o(csr_save_cause_o),
	.exc_pc_mux_o(exc_pc_mux_o));

	initial begin
		$dumpfile("/data/vpulav2/Work/GoldMine/Runtime/goldmine.out/ibex_controller/ibex_controller.vcd");
		$dumpvars(0, ibex_controller_bench.ibex_controller_);
		clk_i = 1;
		rst_ni = 0;
		#26;
		rst_ni = 1;
		#50000 $finish;
	end

	always begin
		#25 clk_i = ~clk_i;
	end

	always begin
		#24;
		irq_pending_i = $random;
		fetch_enable_i = $random;
		csr_mtip_i = $random;
		lsu_addr_last_i = $random;
		stall_multdiv_i = $random;
		csr_pipe_flush_i = $random;
		csr_msip_i = $random;
		instr_valid_i = $random;
		dret_insn_i = $random;
		pc_id_i = $random;
		stall_lsu_i = $random;
		ebrk_insn_i = $random;
		jump_set_i = $random;
		debug_single_step_i = $random;
		wfi_insn_i = $random;
		instr_compressed_i = $random;
		instr_is_compressed_i = $random;
		csr_meip_i = $random;
		illegal_insn_i = $random;
		stall_jump_i = $random;
		instr_fetch_err_i = $random;
		instr_i = $random;
		irq_nm_i = $random;
		debug_ebreakm_i = $random;
		branch_set_i = $random;
		mret_insn_i = $random;
		stall_branch_i = $random;
		debug_ebreaku_i = $random;
		priv_mode_i = $random;
		csr_mstatus_tw_i = $random;
		store_err_i = $random;
		ecall_insn_i = $random;
		csr_mstatus_mie_i = $random;
		csr_mfip_i = $random;
		load_err_i = $random;
		debug_req_i = $random;
		#26;
	end

endmodule