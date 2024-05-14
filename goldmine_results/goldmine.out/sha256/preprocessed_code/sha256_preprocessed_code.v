/////////////////////////////////////////////////////////////////////
////                                                             ////
////  SHA-256                                                    ////
////  Secure Hash Algorithm (SHA-256)                            ////
////                                                             ////
////  Author: marsgod                                            ////
////          marsgod@opencores.org                              ////
////                                                             ////
////                                                             ////
////  Downloaded from: http://www.opencores.org/cores/sha_core/  ////
////                                                             ////
/////////////////////////////////////////////////////////////////////
////                                                             ////
//// Copyright (C) 2000-2002 marsgod                             ////
////                         marsgod@opencores.org               ////
////                                                             ////
////                                                             ////
//// This source file may be used and distributed without        ////
//// restriction provided that this copyright statement is not   ////
//// removed from the file and that any derivative work contains ////
//// the original copyright notice and the associated disclaimer.////
////                                                             ////
////     THIS SOFTWARE IS PROVIDED ``AS IS'' AND WITHOUT ANY     ////
//// EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED   ////
//// TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS   ////
//// FOR A PARTICULAR PURPOSE. IN NO EVENT SHALL THE AUTHOR      ////
//// OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,         ////
//// INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES    ////
//// (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE   ////
//// GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR        ////
//// BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF  ////
//// LIABILITY, WHETHER IN  CONTRACT, STRICT LIABILITY, OR TORT  ////
//// (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT  ////
//// OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE         ////
//// POSSIBILITY OF SUCH DAMAGE.                                 ////
////                                                             ////
/////////////////////////////////////////////////////////////////////











































































module sha256 (clk_i, rst_i, text_i, text_o, cmd_i, cmd_w_i, cmd_o);

        input           clk_i;  // global clock input
        input           rst_i;  // global reset input , active high
        
        input   [31:0]  text_i; // text input 32bit
        output  [31:0]  text_o; // text output 32bit
        
        input   [2:0]   cmd_i;  // command input
        input           cmd_w_i;// command input write enable
        output  [3:0]   cmd_o;  // command output(status)

        /*
                cmd
                Busy Round W R

                bit3 bit2  bit1 bit0
                Busy Round W    R
                
                Busy:
                0       idle
                1       busy
                
                Round:
                0       first round
                1       internal round
                
                W:
                0       No-op
                1       write data
                
                R:
                0       No-op
                1       read data
                        
        */
        

        reg     [3:0]   cmd;
        wire    [3:0]   cmd_o;
        
        reg     [31:0]  text_o;
        
        reg     [6:0]   round;
        wire    [6:0]   round_plus_1;
        
        reg     [2:0]   read_counter;
        
        reg     [31:0]  H0,H1,H2,H3,H4,H5,H6,H7;
        reg     [31:0]  W0,W1,W2,W3,W4,W5,W6,W7,W8,W9,W10,W11,W12,W13,W14;
        reg     [31:0]  Wt,Kt;
        reg     [31:0]  A,B,C,D,E,F,G,H;

        reg             busy;
        
        assign cmd_o = cmd;
        always @ (posedge clk_i)
        begin
                if (rst_i)
                        cmd <= 'b0;
                else
                if (cmd_w_i)
                        cmd[2:0] <= cmd_i[2:0];         // busy bit can't write
                else
                begin
                        cmd[3] <= busy;                 // update busy bit
                        if (~busy)
                                cmd[1:0] <= 2'b00;      // hardware auto clean R/W bits
                end
        end
        
        wire [31:0] f1_EFG_32,f2_ABC_32,f3_A_32,f4_E_32,f5_W1_32,f6_W14_32,T1_32,T2_32;
        wire [31:0] next_Wt,next_E,next_A;
        wire [255:0] SHA256_result;
        
        assign f1_EFG_32 = (E & F) ^ (~E & G);

        assign f2_ABC_32 = (A & B) ^ (B & C) ^ (A & C);
        
        assign f3_A_32 = {A[1:0],A[31:2]} ^ {A[12:0],A[31:13]} ^ {A[21:0],A[31:22]};
        
        assign f4_E_32 = {E[5:0],E[31:6]} ^ {E[10:0],E[31:11]} ^ {E[24:0],E[31:25]};
        
        assign f5_W1_32 = {W1[6:0],W1[31:7]} ^ {W1[17:0],W1[31:18]} ^ {3'b000,W1[31:3]};
        
        assign f6_W14_32 = {W14[16:0],W14[31:17]} ^ {W14[18:0],W14[31:19]} ^ {10'b00_0000_0000,W14[31:10]};
        
        
        assign T1_32 = H[31:0] + f4_E_32 + f1_EFG_32 + Kt + Wt;
        
        assign T2_32 = f3_A_32 + f2_ABC_32;
        
        assign next_Wt = f6_W14_32 + W9[31:0] + f5_W1_32 + W0[31:0];
        assign next_E = D[31:0] + T1_32;
        assign next_A = T1_32 + T2_32;
        

        assign SHA256_result = {A,B,C,D,E,F,G,H};

        assign round_plus_1 = round + 1;
        
        //------------------------------------------------------------------    
        // SHA round
        //------------------------------------------------------------------
        always @(posedge clk_i)
        begin
                if (rst_i)
                begin
                        round <= 'd0;
                        busy <= 'b0;

                        W0  <= 'b0;
                        W1  <= 'b0;
                        W2  <= 'b0;
                        W3  <= 'b0;
                        W4  <= 'b0;
                        W5  <= 'b0;
                        W6  <= 'b0;
                        W7  <= 'b0;
                        W8  <= 'b0;
                        W9  <= 'b0;
                        W10 <= 'b0;
                        W11 <= 'b0;
                        W12 <= 'b0;
                        W13 <= 'b0;
                        W14 <= 'b0;
                        Wt  <= 'b0;
                        
                        A <= 'b0;
                        B <= 'b0;
                        C <= 'b0;
                        D <= 'b0;
                        E <= 'b0;
                        F <= 'b0;
                        G <= 'b0;
                        H <= 'b0;

                        H0 <= 'b0;
                        H1 <= 'b0;
                        H2 <= 'b0;
                        H3 <= 'b0;
                        H4 <= 'b0;
                        H5 <= 'b0;
                        H6 <= 'b0;
                        H7 <= 'b0;
                end
                else
                begin
                        case (round)
                        
                        'd0:
                                begin
                                        if (cmd[1])
                                        begin
                                                W0 <= text_i;
                                                Wt <= text_i;
                                                busy <= 'b1;
                                                round <= round_plus_1;
                                                
                                                case (cmd[2])
                                                        1'b0:   // sha-256 first message
                                                                begin
                                                                        A <= 32'h6a09e667;
                                                                        B <= 32'hbb67ae85;
                                                                        C <= 32'h3c6ef372;
                                                                        D <= 32'ha54ff53a;
                                                                        E <= 32'h510e527f;
                                                                        F <= 32'h9b05688c;
                                                                        G <= 32'h1f83d9ab;
                                                                        H <= 32'h5be0cd19;

                                                                        H0 <= 32'h6a09e667;
                                                                        H1 <= 32'hbb67ae85;
                                                                        H2 <= 32'h3c6ef372;
                                                                        H3 <= 32'ha54ff53a;
                                                                        H4 <= 32'h510e527f;
                                                                        H5 <= 32'h9b05688c;
                                                                        H6 <= 32'h1f83d9ab;
                                                                        H7 <= 32'h5be0cd19;
                                                                end
                                                        1'b1:   // sha-256 internal message
                                                                begin
                                                                        H0 <= A;
                                                                        H1 <= B;
                                                                        H2 <= C;
                                                                        H3 <= D;
                                                                        H4 <= E;
                                                                        H5 <= F;
                                                                        H6 <= G;
                                                                        H7 <= H;
                                                                end
                                                endcase
                                        end
                                        else
                                        begin   // IDLE
                                                round <= 'd0;
                                        end
                                end
                        'd1:
                                begin
                                        W1 <= text_i;
                                        Wt <= text_i;
                                        
                                        H <= G;
                                        G <= F;
                                        F <= E;
                                        E <= next_E;
                                        D <= C;
                                        C <= B;
                                        B <= A;
                                        A <= next_A;
                                                
                                        round <= round_plus_1;
                                end
                        'd2:
                                begin
                                        W2 <= text_i;
                                        Wt <= text_i;
                                        
                                        H <= G;
                                        G <= F;
                                        F <= E;
                                        E <= next_E;
                                        D <= C;
                                        C <= B;
                                        B <= A;
                                        A <= next_A;
                                                
                                        round <= round_plus_1;
                                end
                        'd3:
                                begin
                                        W3 <= text_i;
                                        Wt <= text_i;
                                        
                                        H <= G;
                                        G <= F;
                                        F <= E;
                                        E <= next_E;
                                        D <= C;
                                        C <= B;
                                        B <= A;
                                        A <= next_A;
                                                
                                        round <= round_plus_1;
                                end
                        'd4:
                                begin
                                        W4 <= text_i;
                                        Wt <= text_i;
                                        
                                        H <= G;
                                        G <= F;
                                        F <= E;
                                        E <= next_E;
                                        D <= C;
                                        C <= B;
                                        B <= A;
                                        A <= next_A;
                                                
                                        round <= round_plus_1;
                                end
                        'd5:
                                begin
                                        W5 <= text_i;
                                        Wt <= text_i;
                                        
                                        H <= G;
                                        G <= F;
                                        F <= E;
                                        E <= next_E;
                                        D <= C;
                                        C <= B;
                                        B <= A;
                                        A <= next_A;
                                                
                                        round <= round_plus_1;
                                end
                        'd6:
                                begin
                                        W6 <= text_i;
                                        Wt <= text_i;
                                        
                                        H <= G;
                                        G <= F;
                                        F <= E;
                                        E <= next_E;
                                        D <= C;
                                        C <= B;
                                        B <= A;
                                        A <= next_A;
                                                
                                        round <= round_plus_1;
                                end
                        'd7:
                                begin
                                        W7 <= text_i;
                                        Wt <= text_i;
                                        
                                        H <= G;
                                        G <= F;
                                        F <= E;
                                        E <= next_E;
                                        D <= C;
                                        C <= B;
                                        B <= A;
                                        A <= next_A;
                                                
                                        round <= round_plus_1;
                                end
                        'd8:
                                begin
                                        W8 <= text_i;
                                        Wt <= text_i;
                                        
                                        H <= G;
                                        G <= F;
                                        F <= E;
                                        E <= next_E;
                                        D <= C;
                                        C <= B;
                                        B <= A;
                                        A <= next_A;
                                                
                                        round <= round_plus_1;
                                end
                        'd9:
                                begin
                                        W9 <= text_i;
                                        Wt <= text_i;
                                        
                                        H <= G;
                                        G <= F;
                                        F <= E;
                                        E <= next_E;
                                        D <= C;
                                        C <= B;
                                        B <= A;
                                        A <= next_A;
                                                
                                        round <= round_plus_1;
                                end
                        'd10:
                                begin
                                        W10 <= text_i;
                                        Wt <= text_i;
                                        
                                        H <= G;
                                        G <= F;
                                        F <= E;
                                        E <= next_E;
                                        D <= C;
                                        C <= B;
                                        B <= A;
                                        A <= next_A;
                                                
                                        round <= round_plus_1;
                                end
                        'd11:
                                begin
                                        W11 <= text_i;
                                        Wt <= text_i;
                                        
                                        H <= G;
                                        G <= F;
                                        F <= E;
                                        E <= next_E;
                                        D <= C;
                                        C <= B;
                                        B <= A;
                                        A <= next_A;
                                                
                                        round <= round_plus_1;
                                end
                        'd12:
                                begin
                                        W12 <= text_i;
                                        Wt <= text_i;
                                        
                                        H <= G;
                                        G <= F;
                                        F <= E;
                                        E <= next_E;
                                        D <= C;
                                        C <= B;
                                        B <= A;
                                        A <= next_A;
                                                
                                        round <= round_plus_1;
                                end
                        'd13:
                                begin
                                        W13 <= text_i;
                                        Wt <= text_i;
                                        
                                        H <= G;
                                        G <= F;
                                        F <= E;
                                        E <= next_E;
                                        D <= C;
                                        C <= B;
                                        B <= A;
                                        A <= next_A;
                                                
                                        round <= round_plus_1;
                                end
                        'd14:
                                begin
                                        W14 <= text_i;
                                        Wt <= text_i;
                                        
                                        H <= G;
                                        G <= F;
                                        F <= E;
                                        E <= next_E;
                                        D <= C;
                                        C <= B;
                                        B <= A;
                                        A <= next_A;
                                                
                                        round <= round_plus_1;
                                end
                        'd15:
                                begin
                                        Wt <= text_i;
                                        
                                        H <= G;
                                        G <= F;
                                        F <= E;
                                        E <= next_E;
                                        D <= C;
                                        C <= B;
                                        B <= A;
                                        A <= next_A;
                                                
                                        round <= round_plus_1;
                                end
                        'd16,
                        'd17,
                        'd18,
                        'd19,
                        'd20,
                        'd21,
                        'd22,
                        'd23,
                        'd24,
                        'd25,
                        'd26,
                        'd27,
                        'd28,
                        'd29,
                        'd30,
                        'd31,
                        'd32,
                        'd33,
                        'd34,
                        'd35,
                        'd36,
                        'd37,
                        'd38,
                        'd39,
                        'd40,
                        'd41,
                        'd42,
                        'd43,
                        'd44,
                        'd45,
                        'd46,
                        'd47,
                        'd48,
                        'd49,
                        'd50,
                        'd51,
                        'd52,
                        'd53,
                        'd54,
                        'd55,
                        'd56,
                        'd57,
                        'd58,
                        'd59,
                        'd60,
                        'd61,
                        'd62,
                        'd63:
                                begin
                                        W0  <= W1;
                                        W1  <= W2;
                                        W2  <= W3;
                                        W3  <= W4;
                                        W4  <= W5;
                                        W5  <= W6;
                                        W6  <= W7;
                                        W7  <= W8;
                                        W8  <= W9;
                                        W9  <= W10;
                                        W10 <= W11;
                                        W11 <= W12;
                                        W12 <= W13;
                                        W13 <= W14;
                                        W14 <= Wt;
                                        Wt  <= next_Wt;
                                        
                                        H <= G;
                                        G <= F;
                                        F <= E;
                                        E <= next_E;
                                        D <= C;
                                        C <= B;
                                        B <= A;
                                        A <= next_A;
                                                
                                        round <= round_plus_1;
                                end
                        'd64:
                                begin
                                        A <= next_A + H0;
                                        B <= A + H1;
                                        C <= B + H2;
                                        D <= C + H3;
                                        E <= next_E + H4;
                                        F <= E + H5;
                                        G <= F + H6;
                                        H <= G + H7;
                                        round <= 'd0;
                                        busy <= 'b0;
                                end
                        default:
                                begin
                                        round <= 'd0;
                                        busy <= 'b0;
                                end
                        endcase
                end     
        end 
        
        
        //------------------------------------------------------------------    
        // Kt generator
        //------------------------------------------------------------------    
        always @ (posedge clk_i)
        begin
                if (rst_i)
                begin
                        Kt <= 'b0;
                end
                else
                begin
                        case (round)
                                'd00:   Kt <= 32'h428a2f98;
                                'd01:   Kt <= 32'h71374491;
                                'd02:   Kt <= 32'hb5c0fbcf;
                                'd03:   Kt <= 32'he9b5dba5;
                                'd04:   Kt <= 32'h3956c25b;
                                'd05:   Kt <= 32'h59f111f1;
                                'd06:   Kt <= 32'h923f82a4;
                                'd07:   Kt <= 32'hab1c5ed5;
                                'd08:   Kt <= 32'hd807aa98;
                                'd09:   Kt <= 32'h12835b01;
                                'd10:   Kt <= 32'h243185be;
                                'd11:   Kt <= 32'h550c7dc3;
                                'd12:   Kt <= 32'h72be5d74;
                                'd13:   Kt <= 32'h80deb1fe;
                                'd14:   Kt <= 32'h9bdc06a7;
                                'd15:   Kt <= 32'hc19bf174;
                                'd16:   Kt <= 32'he49b69c1;
                                'd17:   Kt <= 32'hefbe4786;
                                'd18:   Kt <= 32'h0fc19dc6;
                                'd19:   Kt <= 32'h240ca1cc;
                                'd20:   Kt <= 32'h2de92c6f;
                                'd21:   Kt <= 32'h4a7484aa;
                                'd22:   Kt <= 32'h5cb0a9dc;
                                'd23:   Kt <= 32'h76f988da;
                                'd24:   Kt <= 32'h983e5152;
                                'd25:   Kt <= 32'ha831c66d;
                                'd26:   Kt <= 32'hb00327c8;
                                'd27:   Kt <= 32'hbf597fc7;
                                'd28:   Kt <= 32'hc6e00bf3;
                                'd29:   Kt <= 32'hd5a79147;
                                'd30:   Kt <= 32'h06ca6351;
                                'd31:   Kt <= 32'h14292967;
                                'd32:   Kt <= 32'h27b70a85;
                                'd33:   Kt <= 32'h2e1b2138;
                                'd34:   Kt <= 32'h4d2c6dfc;
                                'd35:   Kt <= 32'h53380d13;
                                'd36:   Kt <= 32'h650a7354;
                                'd37:   Kt <= 32'h766a0abb;
                                'd38:   Kt <= 32'h81c2c92e;
                                'd39:   Kt <= 32'h92722c85;
                                'd40:   Kt <= 32'ha2bfe8a1;
                                'd41:   Kt <= 32'ha81a664b;
                                'd42:   Kt <= 32'hc24b8b70;
                                'd43:   Kt <= 32'hc76c51a3;
                                'd44:   Kt <= 32'hd192e819;
                                'd45:   Kt <= 32'hd6990624;
                                'd46:   Kt <= 32'hf40e3585;
                                'd47:   Kt <= 32'h106aa070;
                                'd48:   Kt <= 32'h19a4c116;
                                'd49:   Kt <= 32'h1e376c08;
                                'd50:   Kt <= 32'h2748774c;
                                'd51:   Kt <= 32'h34b0bcb5;
                                'd52:   Kt <= 32'h391c0cb3;
                                'd53:   Kt <= 32'h4ed8aa4a;
                                'd54:   Kt <= 32'h5b9cca4f;
                                'd55:   Kt <= 32'h682e6ff3;
                                'd56:   Kt <= 32'h748f82ee;
                                'd57:   Kt <= 32'h78a5636f;
                                'd58:   Kt <= 32'h84c87814;
                                'd59:   Kt <= 32'h8cc70208;
                                'd60:   Kt <= 32'h90befffa;
                                'd61:   Kt <= 32'ha4506ceb;
                                'd62:   Kt <= 32'hbef9a3f7;
                                'd63:   Kt <= 32'hc67178f2;
                                default:Kt <= 'd0;
                        endcase
                end
        end

        //------------------------------------------------------------------    
        // read result 
        //------------------------------------------------------------------    
        always @ (posedge clk_i)
        begin
                if (rst_i)
                begin
                        text_o <= 'b0;
                        read_counter <= 'b0;
                end
                else
                begin
                        if (cmd[0])
                        begin
                                read_counter <= 'd7;    // sha-256      256/32=8
                        end
                        else
                        begin
                        if (~busy)
                        begin
                                case (read_counter)
                                        'd7:    text_o <= SHA256_result[8*32-1:7*32];
                                        'd6:    text_o <= SHA256_result[7*32-1:6*32];
                                        'd5:    text_o <= SHA256_result[6*32-1:5*32];
                                        'd4:    text_o <= SHA256_result[5*32-1:4*32];
                                        'd3:    text_o <= SHA256_result[4*32-1:3*32];
                                        'd2:    text_o <= SHA256_result[3*32-1:2*32];
                                        'd1:    text_o <= SHA256_result[2*32-1:1*32];
                                        'd0:    text_o <= SHA256_result[1*32-1:0*32];
                                        default:text_o <= 'b0;
                                endcase
                                if (|read_counter)
                                        read_counter <= read_counter - 'd1;
                        end
                        else
                        begin
                                text_o <= 'b0;
                        end
                        end
                end
        end
        
endmodule
 
